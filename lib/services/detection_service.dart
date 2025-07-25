import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:object_identification/utility/constants.dart';

class DetectionService {
  Future<void> detectFromFile(String imagePath) async {
    final bytes = await File(imagePath).readAsBytes();
    final base64Image = base64Encode(bytes);

    final response = await http.post(
      Uri.parse(Constants.robolflowUrl),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: base64Image,
    );

    print(response.body);

    // return response;
  }

  // Future<void> detectFromUrl(String imageUrl) async {
  //   final url =
  //       'https://detect.roboflow.com/$projectId/$versionNumber?api_key=$apiKey&image=${Uri.encodeComponent(imageUrl)}';

  //   final response = await http.post(Uri.parse(url));
  // }
}
