import 'package:flutter/material.dart';
import 'package:object_identification/screens/click_or_pick_bs.dart';
import 'package:object_identification/screens/homepage/homepage_controller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late HomepageController controller;
  @override
  void initState() {
    controller = HomepageController(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Object Identification')),
      body: const Center(
        child: Text('Welcome to the Object Identification App!'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 300,
        child: FloatingActionButton(
          onPressed: () {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(width: 10),
              const Text('Click or Pick Image'),
            ],
          ),
        ),
      ),
    );
  }
}
