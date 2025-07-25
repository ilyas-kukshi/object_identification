import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_model.freezed.dart';
part 'label_model.g.dart';

@freezed
abstract class LabelModel with _$LabelModel {
  const factory LabelModel({required String name, required double confidence}) =
      _LabelModel;

  factory LabelModel.fromJson(Map<String, dynamic> json) =>
      _$LabelModelFromJson(json);
}
