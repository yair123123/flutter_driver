// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Ride _$RideFromJson(Map<String, dynamic> json) {
  return _Ride.fromJson(json);
}

/// @nodoc
mixin _$Ride {
  String get id => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  String get dispatcherId => throw _privateConstructorUsedError;
  String get stationId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this Ride to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RideCopyWith<Ride> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) then) =
      _$RideCopyWithImpl<$Res, Ride>;
  @useResult
  $Res call({
    String id,
    String details,
    String dispatcherId,
    String stationId,
    DateTime timestamp,
  });
}

/// @nodoc
class _$RideCopyWithImpl<$Res, $Val extends Ride>
    implements $RideCopyWith<$Res> {
  _$RideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? details = null,
    Object? dispatcherId = null,
    Object? stationId = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            details:
                null == details
                    ? _value.details
                    : details // ignore: cast_nullable_to_non_nullable
                        as String,
            dispatcherId:
                null == dispatcherId
                    ? _value.dispatcherId
                    : dispatcherId // ignore: cast_nullable_to_non_nullable
                        as String,
            stationId:
                null == stationId
                    ? _value.stationId
                    : stationId // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RideImplCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$$RideImplCopyWith(
    _$RideImpl value,
    $Res Function(_$RideImpl) then,
  ) = __$$RideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String details,
    String dispatcherId,
    String stationId,
    DateTime timestamp,
  });
}

/// @nodoc
class __$$RideImplCopyWithImpl<$Res>
    extends _$RideCopyWithImpl<$Res, _$RideImpl>
    implements _$$RideImplCopyWith<$Res> {
  __$$RideImplCopyWithImpl(_$RideImpl _value, $Res Function(_$RideImpl) _then)
    : super(_value, _then);

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? details = null,
    Object? dispatcherId = null,
    Object? stationId = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$RideImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        details:
            null == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                    as String,
        dispatcherId:
            null == dispatcherId
                ? _value.dispatcherId
                : dispatcherId // ignore: cast_nullable_to_non_nullable
                    as String,
        stationId:
            null == stationId
                ? _value.stationId
                : stationId // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RideImpl implements _Ride {
  const _$RideImpl({
    required this.id,
    required this.details,
    required this.dispatcherId,
    required this.stationId,
    required this.timestamp,
  });

  factory _$RideImpl.fromJson(Map<String, dynamic> json) =>
      _$$RideImplFromJson(json);

  @override
  final String id;
  @override
  final String details;
  @override
  final String dispatcherId;
  @override
  final String stationId;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'Ride(id: $id, details: $details, dispatcherId: $dispatcherId, stationId: $stationId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.dispatcherId, dispatcherId) ||
                other.dispatcherId == dispatcherId) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, details, dispatcherId, stationId, timestamp);

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideImplCopyWith<_$RideImpl> get copyWith =>
      __$$RideImplCopyWithImpl<_$RideImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RideImplToJson(this);
  }
}

abstract class _Ride implements Ride {
  const factory _Ride({
    required final String id,
    required final String details,
    required final String dispatcherId,
    required final String stationId,
    required final DateTime timestamp,
  }) = _$RideImpl;

  factory _Ride.fromJson(Map<String, dynamic> json) = _$RideImpl.fromJson;

  @override
  String get id;
  @override
  String get details;
  @override
  String get dispatcherId;
  @override
  String get stationId;
  @override
  DateTime get timestamp;

  /// Create a copy of Ride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideImplCopyWith<_$RideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
