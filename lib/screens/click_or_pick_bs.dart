import 'package:flutter/material.dart';

class ClickOrPickBs extends StatelessWidget {
  final BuildContext context;
  final void Function() onGalleryTap;
  final void Function() onCameraTap;

  const ClickOrPickBs({
    super.key,
    required this.context,
    required this.onGalleryTap,
    required this.onCameraTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Pick from Gallery'),
            onTap: onGalleryTap,
          ),
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('Take a Photo'),
            onTap: onCameraTap,
          ),
        ],
      ),
    );
  }
}
