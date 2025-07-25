// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_identification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ObjectIdentificationModel {

@XFileConverter() XFile get image; List<LabelModel> get labels;@XFileConverter() XFile? get qrImage; String? get qrId;
/// Create a copy of ObjectIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ObjectIdentificationModelCopyWith<ObjectIdentificationModel> get copyWith => _$ObjectIdentificationModelCopyWithImpl<ObjectIdentificationModel>(this as ObjectIdentificationModel, _$identity);

  /// Serializes this ObjectIdentificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ObjectIdentificationModel&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.labels, labels)&&(identical(other.qrImage, qrImage) || other.qrImage == qrImage)&&(identical(other.qrId, qrId) || other.qrId == qrId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(labels),qrImage,qrId);

@override
String toString() {
  return 'ObjectIdentificationModel(image: $image, labels: $labels, qrImage: $qrImage, qrId: $qrId)';
}


}

/// @nodoc
abstract mixin class $ObjectIdentificationModelCopyWith<$Res>  {
  factory $ObjectIdentificationModelCopyWith(ObjectIdentificationModel value, $Res Function(ObjectIdentificationModel) _then) = _$ObjectIdentificationModelCopyWithImpl;
@useResult
$Res call({
@XFileConverter() XFile image, List<LabelModel> labels,@XFileConverter() XFile? qrImage, String? qrId
});




}
/// @nodoc
class _$ObjectIdentificationModelCopyWithImpl<$Res>
    implements $ObjectIdentificationModelCopyWith<$Res> {
  _$ObjectIdentificationModelCopyWithImpl(this._self, this._then);

  final ObjectIdentificationModel _self;
  final $Res Function(ObjectIdentificationModel) _then;

/// Create a copy of ObjectIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,Object? labels = null,Object? qrImage = freezed,Object? qrId = freezed,}) {
  return _then(_self.copyWith(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile,labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<LabelModel>,qrImage: freezed == qrImage ? _self.qrImage : qrImage // ignore: cast_nullable_to_non_nullable
as XFile?,qrId: freezed == qrId ? _self.qrId : qrId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ObjectIdentificationModel].
extension ObjectIdentificationModelPatterns on ObjectIdentificationModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ObjectIdentificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ObjectIdentificationModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ObjectIdentificationModel value)  $default,){
final _that = this;
switch (_that) {
case _ObjectIdentificationModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ObjectIdentificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ObjectIdentificationModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@XFileConverter()  XFile image,  List<LabelModel> labels, @XFileConverter()  XFile? qrImage,  String? qrId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ObjectIdentificationModel() when $default != null:
return $default(_that.image,_that.labels,_that.qrImage,_that.qrId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@XFileConverter()  XFile image,  List<LabelModel> labels, @XFileConverter()  XFile? qrImage,  String? qrId)  $default,) {final _that = this;
switch (_that) {
case _ObjectIdentificationModel():
return $default(_that.image,_that.labels,_that.qrImage,_that.qrId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@XFileConverter()  XFile image,  List<LabelModel> labels, @XFileConverter()  XFile? qrImage,  String? qrId)?  $default,) {final _that = this;
switch (_that) {
case _ObjectIdentificationModel() when $default != null:
return $default(_that.image,_that.labels,_that.qrImage,_that.qrId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ObjectIdentificationModel implements ObjectIdentificationModel {
  const _ObjectIdentificationModel({@XFileConverter() required this.image, required final  List<LabelModel> labels, @XFileConverter() this.qrImage, this.qrId}): _labels = labels;
  factory _ObjectIdentificationModel.fromJson(Map<String, dynamic> json) => _$ObjectIdentificationModelFromJson(json);

@override@XFileConverter() final  XFile image;
 final  List<LabelModel> _labels;
@override List<LabelModel> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}

@override@XFileConverter() final  XFile? qrImage;
@override final  String? qrId;

/// Create a copy of ObjectIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ObjectIdentificationModelCopyWith<_ObjectIdentificationModel> get copyWith => __$ObjectIdentificationModelCopyWithImpl<_ObjectIdentificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ObjectIdentificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ObjectIdentificationModel&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._labels, _labels)&&(identical(other.qrImage, qrImage) || other.qrImage == qrImage)&&(identical(other.qrId, qrId) || other.qrId == qrId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image,const DeepCollectionEquality().hash(_labels),qrImage,qrId);

@override
String toString() {
  return 'ObjectIdentificationModel(image: $image, labels: $labels, qrImage: $qrImage, qrId: $qrId)';
}


}

/// @nodoc
abstract mixin class _$ObjectIdentificationModelCopyWith<$Res> implements $ObjectIdentificationModelCopyWith<$Res> {
  factory _$ObjectIdentificationModelCopyWith(_ObjectIdentificationModel value, $Res Function(_ObjectIdentificationModel) _then) = __$ObjectIdentificationModelCopyWithImpl;
@override @useResult
$Res call({
@XFileConverter() XFile image, List<LabelModel> labels,@XFileConverter() XFile? qrImage, String? qrId
});




}
/// @nodoc
class __$ObjectIdentificationModelCopyWithImpl<$Res>
    implements _$ObjectIdentificationModelCopyWith<$Res> {
  __$ObjectIdentificationModelCopyWithImpl(this._self, this._then);

  final _ObjectIdentificationModel _self;
  final $Res Function(_ObjectIdentificationModel) _then;

/// Create a copy of ObjectIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,Object? labels = null,Object? qrImage = freezed,Object? qrId = freezed,}) {
  return _then(_ObjectIdentificationModel(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile,labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<LabelModel>,qrImage: freezed == qrImage ? _self.qrImage : qrImage // ignore: cast_nullable_to_non_nullable
as XFile?,qrId: freezed == qrId ? _self.qrId : qrId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
