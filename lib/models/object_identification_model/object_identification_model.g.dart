// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_identification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ObjectIdentificationModel _$ObjectIdentificationModelFromJson(
  Map<String, dynamic> json,
) => _ObjectIdentificationModel(
  image: const XFileConverter().fromJson(json['image'] as String),
  labels: (json['labels'] as List<dynamic>)
      .map((e) => LabelModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  qrImage: _$JsonConverterFromJson<String, XFile>(
    json['qrImage'],
    const XFileConverter().fromJson,
  ),
  qrId: json['qrId'] as String?,
);

Map<String, dynamic> _$ObjectIdentificationModelToJson(
  _ObjectIdentificationModel instance,
) => <String, dynamic>{
  'image': const XFileConverter().toJson(instance.image),
  'labels': instance.labels,
  'qrImage': _$JsonConverterToJson<String, XFile>(
    instance.qrImage,
    const XFileConverter().toJson,
  ),
  'qrId': instance.qrId,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
