// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabelModel {

 String get name; double get confidence;
/// Create a copy of LabelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabelModelCopyWith<LabelModel> get copyWith => _$LabelModelCopyWithImpl<LabelModel>(this as LabelModel, _$identity);

  /// Serializes this LabelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabelModel&&(identical(other.name, name) || other.name == name)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,confidence);

@override
String toString() {
  return 'LabelModel(name: $name, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $LabelModelCopyWith<$Res>  {
  factory $LabelModelCopyWith(LabelModel value, $Res Function(LabelModel) _then) = _$LabelModelCopyWithImpl;
@useResult
$Res call({
 String name, double confidence
});




}
/// @nodoc
class _$LabelModelCopyWithImpl<$Res>
    implements $LabelModelCopyWith<$Res> {
  _$LabelModelCopyWithImpl(this._self, this._then);

  final LabelModel _self;
  final $Res Function(LabelModel) _then;

/// Create a copy of LabelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? confidence = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LabelModel].
extension LabelModelPatterns on LabelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabelModel value)  $default,){
final _that = this;
switch (_that) {
case _LabelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabelModel value)?  $default,){
final _that = this;
switch (_that) {
case _LabelModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabelModel() when $default != null:
return $default(_that.name,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double confidence)  $default,) {final _that = this;
switch (_that) {
case _LabelModel():
return $default(_that.name,_that.confidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double confidence)?  $default,) {final _that = this;
switch (_that) {
case _LabelModel() when $default != null:
return $default(_that.name,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LabelModel implements LabelModel {
  const _LabelModel({required this.name, required this.confidence});
  factory _LabelModel.fromJson(Map<String, dynamic> json) => _$LabelModelFromJson(json);

@override final  String name;
@override final  double confidence;

/// Create a copy of LabelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabelModelCopyWith<_LabelModel> get copyWith => __$LabelModelCopyWithImpl<_LabelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LabelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabelModel&&(identical(other.name, name) || other.name == name)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,confidence);

@override
String toString() {
  return 'LabelModel(name: $name, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$LabelModelCopyWith<$Res> implements $LabelModelCopyWith<$Res> {
  factory _$LabelModelCopyWith(_LabelModel value, $Res Function(_LabelModel) _then) = __$LabelModelCopyWithImpl;
@override @useResult
$Res call({
 String name, double confidence
});




}
/// @nodoc
class __$LabelModelCopyWithImpl<$Res>
    implements _$LabelModelCopyWith<$Res> {
  __$LabelModelCopyWithImpl(this._self, this._then);

  final _LabelModel _self;
  final $Res Function(_LabelModel) _then;

/// Create a copy of LabelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? confidence = null,}) {
  return _then(_LabelModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
