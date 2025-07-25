import 'package:flutter/material.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:image_picker/image_picker.dart';
import 'package:object_identification/models/label_model/label_model.dart';

class ClickOrPickBs extends StatelessWidget {
  const ClickOrPickBs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Pick from Gallery'),
            onTap: () async {
              // Use image_picker to pick from gallery
              // Example:
              final pickedFile = await ImagePicker().pickImage(
                source: ImageSource.gallery,
              );
              if (pickedFile == null) {
                return;
              }
              _detectLabels(pickedFile);
            },
          ),
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('Take a Photo'),
            onTap: () async {
              // Use image_picker to take a photo

              final pickedFile = await ImagePicker().pickImage(
                source: ImageSource.camera,
              );
              if (pickedFile == null) {
                return;
              }
              _detectLabels(pickedFile);
            },
          ),
        ],
      ),
    );
  }

  Future<void> _detectLabels(XFile imageFile) async {
    List<LabelModel> labelList = [];
    final inputImage = InputImage.fromFilePath(imageFile.path);
    final imageLabeler = ImageLabeler(
      options: ImageLabelerOptions(confidenceThreshold: 0.6),
    );

    final labels = await imageLabeler.processImage(inputImage);
    for (final label in labels) {
      labelList.add(
        LabelModel(name: label.label, confidence: label.confidence),
      );
    }
    imageLabeler.close();


    
  }
}
