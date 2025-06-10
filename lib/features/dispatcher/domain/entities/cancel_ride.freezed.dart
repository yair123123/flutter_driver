// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CancelRide _$CancelRideFromJson(Map<String, dynamic> json) {
  return _CancelRide.fromJson(json);
}

/// @nodoc
mixin _$CancelRide {
  String get rideId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this CancelRide to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancelRide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelRideCopyWith<CancelRide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelRideCopyWith<$Res> {
  factory $CancelRideCopyWith(
    CancelRide value,
    $Res Function(CancelRide) then,
  ) = _$CancelRideCopyWithImpl<$Res, CancelRide>;
  @useResult
  $Res call({String rideId, String reason});
}

/// @nodoc
class _$CancelRideCopyWithImpl<$Res, $Val extends CancelRide>
    implements $CancelRideCopyWith<$Res> {
  _$CancelRideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelRide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideId = null, Object? reason = null}) {
    return _then(
      _value.copyWith(
            rideId:
                null == rideId
                    ? _value.rideId
                    : rideId // ignore: cast_nullable_to_non_nullable
                        as String,
            reason:
                null == reason
                    ? _value.reason
                    : reason // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CancelRideImplCopyWith<$Res>
    implements $CancelRideCopyWith<$Res> {
  factory _$$CancelRideImplCopyWith(
    _$CancelRideImpl value,
    $Res Function(_$CancelRideImpl) then,
  ) = __$$CancelRideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rideId, String reason});
}

/// @nodoc
class __$$CancelRideImplCopyWithImpl<$Res>
    extends _$CancelRideCopyWithImpl<$Res, _$CancelRideImpl>
    implements _$$CancelRideImplCopyWith<$Res> {
  __$$CancelRideImplCopyWithImpl(
    _$CancelRideImpl _value,
    $Res Function(_$CancelRideImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CancelRide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideId = null, Object? reason = null}) {
    return _then(
      _$CancelRideImpl(
        rideId:
            null == rideId
                ? _value.rideId
                : rideId // ignore: cast_nullable_to_non_nullable
                    as String,
        reason:
            null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelRideImpl implements _CancelRide {
  const _$CancelRideImpl({required this.rideId, required this.reason});

  factory _$CancelRideImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelRideImplFromJson(json);

  @override
  final String rideId;
  @override
  final String reason;

  @override
  String toString() {
    return 'CancelRide(rideId: $rideId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRideImpl &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, reason);

  /// Create a copy of CancelRide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRideImplCopyWith<_$CancelRideImpl> get copyWith =>
      __$$CancelRideImplCopyWithImpl<_$CancelRideImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelRideImplToJson(this);
  }
}

abstract class _CancelRide implements CancelRide {
  const factory _CancelRide({
    required final String rideId,
    required final String reason,
  }) = _$CancelRideImpl;

  factory _CancelRide.fromJson(Map<String, dynamic> json) =
      _$CancelRideImpl.fromJson;

  @override
  String get rideId;
  @override
  String get reason;

  /// Create a copy of CancelRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelRideImplCopyWith<_$CancelRideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
