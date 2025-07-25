import 'package:flutter/material.dart';
import 'package:object_identification/models/object_identification_model/object_identification_model.dart';

class SelectLabel extends StatefulWidget {
  final ObjectIdentificationModel object;
  const SelectLabel({super.key, required this.object});

  @override
  State<SelectLabel> createState() => _SelectLabelState();
}

class _SelectLabelState extends State<SelectLabel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
