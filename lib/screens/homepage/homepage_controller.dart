import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:image_picker/image_picker.dart';
import 'package:object_identification/models/label_model/label_model.dart';
import 'package:object_identification/models/object_identification_model/object_identification_model.dart';

class HomepageController {
  final BuildContext context;
  HomepageController({required this.context});

  onGalleryTap() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) {
      return;
    }
    _detectLabels(pickedFile);
  }

  onCameraTap() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile == null) {
      return;
    }
    _detectLabels(pickedFile);
  }

  Future<void> _detectLabels(XFile imageFile) async {
    context.pop(); // Close the bottom sheet

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

    context.goNamed(
      'selectLabel',
      extra: ObjectIdentificationModel(image: imageFile, labels: labelList),
    );
  }
}
