import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:image_picker/image_picker.dart';
import 'package:object_identification/models/object_identification_model/object_identification_model.dart';

class SelectLabelController {
  final BuildContext context;
  final ObjectIdentificationModel object;
  SelectLabelController({required this.context, required this.object});

  final TextEditingController nameController = TextEditingController();

  onGalleryTap() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) {
      return;
    }
    getQrData(pickedFile);
  }

  onCameraTap() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile == null) {
      return;
    }
    getQrData(pickedFile);
  }

  getQrData(XFile pickedFile) async {
    context.pop(); // Close the bottom sheet

    if (pickedFile.path.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('No image selected')));
      return;
    }

    final inputImage = InputImage.fromFilePath(pickedFile.path);
    final barcodeScanner = BarcodeScanner(formats: [BarcodeFormat.qrCode]);
    final barcodes = await barcodeScanner.processImage(inputImage);

    if (barcodes.isNotEmpty) {
      context.pushNamed(
        'objectpreview',
        extra: object.copyWith(
          selectedLabel: nameController.text,
          qrImage: pickedFile,
          qrId: barcodes.first.rawValue,
        ),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('No QR code found')));
    }
  }
}
