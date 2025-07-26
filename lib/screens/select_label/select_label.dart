import 'package:flutter/material.dart';
import 'package:object_identification/models/object_identification_model/object_identification_model.dart';
import 'package:object_identification/screens/click_or_pick_bs.dart';
import 'package:object_identification/screens/select_label/select_label_controller.dart';
import 'package:object_identification/utility/btn_utility.dart';
import 'package:object_identification/utility/tff_utility.dart';

class SelectLabel extends StatefulWidget {
  final ObjectIdentificationModel object;
  const SelectLabel({super.key, required this.object});

  @override
  State<SelectLabel> createState() => _SelectLabelState();
}

class _SelectLabelState extends State<SelectLabel> {
  int? _selectedIndex;

  late SelectLabelController controller;
  @override
  void initState() {
    controller = SelectLabelController(context: context, object: widget.object);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Select Label')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          reusableTextFormField(
            context: context,
            controller: controller.nameController,
            hintText: '',
            labelText: "Product Name",
            maxLength: 20,
            onChanged: (p0) => setState(() {
              _selectedIndex = null;
            }),
          ),

          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.95,
          //   child: Row(
          //     children: [
          //       Expanded(child: Divider(thickness: 1, endIndent: 8)),
          //       Text(
          //         'OR',
          //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          //       ),
          //       Expanded(child: Divider(thickness: 1, indent: 8)),
          //     ],
          //   ),
          // ),
          widget.object.labels.isEmpty
              ? Expanded(child: Center(child: Text('No labels detected')))
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.object.labels.length,
                  itemBuilder: (context, index) {
                    final label = widget.object.labels[index];
                    return RadioListTile<int>(
                      value: index,
                      groupValue: _selectedIndex,
                      title: Text(label.name),
                      subtitle: Text(
                        'Confidence: ${(label.confidence * 100).toStringAsFixed(2)}',
                      ),
                      onChanged: (value) {
                        setState(() {
                          _selectedIndex = value!;
                          controller.nameController.text = label.name;
                        });
                      },
                    );
                  },
                ),
        ],
      ),
      bottomNavigationBar: reusableBottomFlatBtn(
        text: "Add QR",
        context: context,
        onTap: () {
          if (controller.nameController.text.isEmpty) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Please enter a label')));
            return;
          }
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ClickOrPickBs(
                context: context,
                onGalleryTap: controller.onGalleryTap,
                onCameraTap: controller.onCameraTap,
              );
            },
          );
        },
      ),
    );
  }
}
