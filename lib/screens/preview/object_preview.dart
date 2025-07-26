import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:object_identification/models/object_identification_model/object_identification_model.dart';
import 'package:object_identification/utility/btn_utility.dart';

class ObjectPreview extends StatefulWidget {
  final ObjectIdentificationModel object;
  const ObjectPreview({super.key, required this.object});

  @override
  State<ObjectPreview> createState() => _ObjectPreviewState();
}

class _ObjectPreviewState extends State<ObjectPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Object Preview')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Name: ${widget.object.selectedLabel}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                "Qr-Id : ${widget.object.qrId}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                "Product Image:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              Image.file(
                File(widget.object.image.path),
                height: 300,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 20),
              Text(
                "QR Code Image:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              Image.file(
                File(widget.object.qrImage!.path),
                height: 300,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: reusableBottomFlatBtn(
        text: "Done",
        context: context,
        onTap: () {
          context.go('/');
        },
      ),
    );
  }
}
