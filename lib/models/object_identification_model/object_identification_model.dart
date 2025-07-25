import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import '../label_model/label_model.dart';

part 'object_identification_model.freezed.dart';
part 'object_identification_model.g.dart';

@freezed
abstract class ObjectIdentificationModel with _$ObjectIdentificationModel {
  const factory ObjectIdentificationModel({
    @XFileConverter() required XFile image,
    required List<LabelModel> labels,
    @XFileConverter() XFile? qrImage,
    String? qrId,
  }) = _ObjectIdentificationModel;

  factory ObjectIdentificationModel.fromJson(Map<String, dynamic> json) =>
      _$ObjectIdentificationModelFromJson(json);
}

class XFileConverter implements JsonConverter<XFile, String> {
  const XFileConverter();

  @override
  XFile fromJson(String path) => XFile(path);

  @override
  String toJson(XFile file) => file.path;
}
