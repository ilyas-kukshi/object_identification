import 'dart:async';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';
import 'package:permission_handler/permission_handler.dart';

class LiveQrScanner extends StatefulWidget {
  @override
  State<LiveQrScanner> createState() => _LiveQrScannerState();
}

class _LiveQrScannerState extends State<LiveQrScanner> {
  CameraController? _controller;
  late BarcodeScanner _barcodeScanner;
  bool _isDetecting = false;
  String? qrCode;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    // Request camera permission
    if (!await Permission.camera.request().isGranted) {
      return;
    }

    // Get available cameras
    final cameras = await availableCameras();
    final backCamera = cameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
    );

    // Initialize controller with imageFormatGroup (YUV420) for better ML support
    _controller = CameraController(
      backCamera,
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.yuv420,
    );
    await _controller!.initialize();

    // Initialize QR code scanner
    _barcodeScanner = BarcodeScanner(formats: [BarcodeFormat.qrCode]);

    // Start camera stream
    _controller!.startImageStream(_processCameraImage);
    setState(() {}); // Refresh widget after initialization
  }

  Future<void> _processCameraImage(CameraImage image) async {
    if (_isDetecting) return;
    _isDetecting = true;

    try {
      // Convert CameraImage to InputImage
      final WriteBuffer allBytes = WriteBuffer();
      for (var plane in image.planes) {
        allBytes.putUint8List(plane.bytes);
      }
      final bytes = allBytes.done().buffer.asUint8List();

      final Size imageSize = Size(
        image.width.toDouble(),
        image.height.toDouble(),
      );

      // Detect device orientation for longer compatibility
      final InputImageRotation imageRotation =
          InputImageRotationValue.fromRawValue(
            _controller!.description.sensorOrientation,
          ) ??
          InputImageRotation.rotation0deg;

      final InputImageFormat inputImageFormat =
          InputImageFormatValue.fromRawValue(image.format.raw) ??
          InputImageFormat.nv21;

      final planeData = image.planes
          .map(
            (plane) => InputImageMetadata(
              bytesPerRow: plane.bytesPerRow,

              size: Size(plane.width!.toDouble(), plane.height!.toDouble()),
              rotation: InputImageRotation.rotation0deg,
              format: inputImageFormat,
            ),
          )
          .toList();

      final inputImageData = InputImageMetadata(
        size: imageSize,
        rotation: imageRotation,
        format: inputImageFormat,
        bytesPerRow: planeData[0].bytesPerRow,
      );

      final inputImage = InputImage.fromBytes(
        bytes: bytes,
        metadata: inputImageData,
      );

      final barcodes = await _barcodeScanner.processImage(inputImage);

      if (barcodes.isNotEmpty) {
        setState(() {
          qrCode = barcodes.first.rawValue;
        });
      }
    } catch (e) {
      debugPrint('Error decoding barcode: $e');
    } finally {
      _isDetecting = false;
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    _barcodeScanner.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Live QR Code Scanner')),
      body: Stack(
        children: [
          CameraPreview(_controller!),
          if (qrCode != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(12),
                color: Colors.black54,
                child: Text(
                  'QR Code: $qrCode',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
