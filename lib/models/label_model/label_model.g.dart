// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabelModel _$LabelModelFromJson(Map<String, dynamic> json) => _LabelModel(
  name: json['name'] as String,
  confidence: (json['confidence'] as num).toDouble(),
);

Map<String, dynamic> _$LabelModelToJson(_LabelModel instance) =>
    <String, dynamic>{'name': instance.name, 'confidence': instance.confidence};
