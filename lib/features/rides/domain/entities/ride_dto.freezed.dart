// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RideDto _$RideDtoFromJson(Map<String, dynamic> json) {
  return _RideDto.fromJson(json);
}

/// @nodoc
mixin _$RideDto {
  int get typeCode => throw _privateConstructorUsedError;
  dynamic get content => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this RideDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RideDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RideDtoCopyWith<RideDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideDtoCopyWith<$Res> {
  factory $RideDtoCopyWith(RideDto value, $Res Function(RideDto) then) =
      _$RideDtoCopyWithImpl<$Res, RideDto>;
  @useResult
  $Res call({int typeCode, dynamic content, String error});
}

/// @nodoc
class _$RideDtoCopyWithImpl<$Res, $Val extends RideDto>
    implements $RideDtoCopyWith<$Res> {
  _$RideDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RideDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? content = freezed,
    Object? error = null,
  }) {
    return _then(
      _value.copyWith(
            typeCode:
                null == typeCode
                    ? _value.typeCode
                    : typeCode // ignore: cast_nullable_to_non_nullable
                        as int,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            error:
                null == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RideDtoImplCopyWith<$Res> implements $RideDtoCopyWith<$Res> {
  factory _$$RideDtoImplCopyWith(
    _$RideDtoImpl value,
    $Res Function(_$RideDtoImpl) then,
  ) = __$$RideDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int typeCode, dynamic content, String error});
}

/// @nodoc
class __$$RideDtoImplCopyWithImpl<$Res>
    extends _$RideDtoCopyWithImpl<$Res, _$RideDtoImpl>
    implements _$$RideDtoImplCopyWith<$Res> {
  __$$RideDtoImplCopyWithImpl(
    _$RideDtoImpl _value,
    $Res Function(_$RideDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RideDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? content = freezed,
    Object? error = null,
  }) {
    return _then(
      _$RideDtoImpl(
        typeCode:
            null == typeCode
                ? _value.typeCode
                : typeCode // ignore: cast_nullable_to_non_nullable
                    as int,
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RideDtoImpl implements _RideDto {
  const _$RideDtoImpl({
    required this.typeCode,
    required this.content,
    required this.error,
  });

  factory _$RideDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RideDtoImplFromJson(json);

  @override
  final int typeCode;
  @override
  final dynamic content;
  @override
  final String error;

  @override
  String toString() {
    return 'RideDto(typeCode: $typeCode, content: $content, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideDtoImpl &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    typeCode,
    const DeepCollectionEquality().hash(content),
    error,
  );

  /// Create a copy of RideDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideDtoImplCopyWith<_$RideDtoImpl> get copyWith =>
      __$$RideDtoImplCopyWithImpl<_$RideDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RideDtoImplToJson(this);
  }
}

abstract class _RideDto implements RideDto {
  const factory _RideDto({
    required final int typeCode,
    required final dynamic content,
    required final String error,
  }) = _$RideDtoImpl;

  factory _RideDto.fromJson(Map<String, dynamic> json) = _$RideDtoImpl.fromJson;

  @override
  int get typeCode;
  @override
  dynamic get content;
  @override
  String get error;

  /// Create a copy of RideDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideDtoImplCopyWith<_$RideDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
