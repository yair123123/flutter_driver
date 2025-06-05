// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispatch_ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DispatchRide _$DispatchRideFromJson(Map<String, dynamic> json) {
  return _DispatchRide.fromJson(json);
}

/// @nodoc
mixin _$DispatchRide {
  int get stationId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  String get phonePassenger => throw _privateConstructorUsedError;
  String get moreDetails => throw _privateConstructorUsedError;

  /// Serializes this DispatchRide to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DispatchRide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DispatchRideCopyWith<DispatchRide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispatchRideCopyWith<$Res> {
  factory $DispatchRideCopyWith(
    DispatchRide value,
    $Res Function(DispatchRide) then,
  ) = _$DispatchRideCopyWithImpl<$Res, DispatchRide>;
  @useResult
  $Res call({
    int stationId,
    DateTime timestamp,
    String origin,
    String destination,
    int cost,
    String phonePassenger,
    String moreDetails,
  });
}

/// @nodoc
class _$DispatchRideCopyWithImpl<$Res, $Val extends DispatchRide>
    implements $DispatchRideCopyWith<$Res> {
  _$DispatchRideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DispatchRide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationId = null,
    Object? timestamp = null,
    Object? origin = null,
    Object? destination = null,
    Object? cost = null,
    Object? phonePassenger = null,
    Object? moreDetails = null,
  }) {
    return _then(
      _value.copyWith(
            stationId:
                null == stationId
                    ? _value.stationId
                    : stationId // ignore: cast_nullable_to_non_nullable
                        as int,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            origin:
                null == origin
                    ? _value.origin
                    : origin // ignore: cast_nullable_to_non_nullable
                        as String,
            destination:
                null == destination
                    ? _value.destination
                    : destination // ignore: cast_nullable_to_non_nullable
                        as String,
            cost:
                null == cost
                    ? _value.cost
                    : cost // ignore: cast_nullable_to_non_nullable
                        as int,
            phonePassenger:
                null == phonePassenger
                    ? _value.phonePassenger
                    : phonePassenger // ignore: cast_nullable_to_non_nullable
                        as String,
            moreDetails:
                null == moreDetails
                    ? _value.moreDetails
                    : moreDetails // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DispatchRideImplCopyWith<$Res>
    implements $DispatchRideCopyWith<$Res> {
  factory _$$DispatchRideImplCopyWith(
    _$DispatchRideImpl value,
    $Res Function(_$DispatchRideImpl) then,
  ) = __$$DispatchRideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int stationId,
    DateTime timestamp,
    String origin,
    String destination,
    int cost,
    String phonePassenger,
    String moreDetails,
  });
}

/// @nodoc
class __$$DispatchRideImplCopyWithImpl<$Res>
    extends _$DispatchRideCopyWithImpl<$Res, _$DispatchRideImpl>
    implements _$$DispatchRideImplCopyWith<$Res> {
  __$$DispatchRideImplCopyWithImpl(
    _$DispatchRideImpl _value,
    $Res Function(_$DispatchRideImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DispatchRide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationId = null,
    Object? timestamp = null,
    Object? origin = null,
    Object? destination = null,
    Object? cost = null,
    Object? phonePassenger = null,
    Object? moreDetails = null,
  }) {
    return _then(
      _$DispatchRideImpl(
        stationId:
            null == stationId
                ? _value.stationId
                : stationId // ignore: cast_nullable_to_non_nullable
                    as int,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        origin:
            null == origin
                ? _value.origin
                : origin // ignore: cast_nullable_to_non_nullable
                    as String,
        destination:
            null == destination
                ? _value.destination
                : destination // ignore: cast_nullable_to_non_nullable
                    as String,
        cost:
            null == cost
                ? _value.cost
                : cost // ignore: cast_nullable_to_non_nullable
                    as int,
        phonePassenger:
            null == phonePassenger
                ? _value.phonePassenger
                : phonePassenger // ignore: cast_nullable_to_non_nullable
                    as String,
        moreDetails:
            null == moreDetails
                ? _value.moreDetails
                : moreDetails // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DispatchRideImpl implements _DispatchRide {
  const _$DispatchRideImpl({
    required this.stationId,
    required this.timestamp,
    required this.origin,
    required this.destination,
    required this.cost,
    required this.phonePassenger,
    required this.moreDetails,
  });

  factory _$DispatchRideImpl.fromJson(Map<String, dynamic> json) =>
      _$$DispatchRideImplFromJson(json);

  @override
  final int stationId;
  @override
  final DateTime timestamp;
  @override
  final String origin;
  @override
  final String destination;
  @override
  final int cost;
  @override
  final String phonePassenger;
  @override
  final String moreDetails;

  @override
  String toString() {
    return 'DispatchRide(stationId: $stationId, timestamp: $timestamp, origin: $origin, destination: $destination, cost: $cost, phonePassenger: $phonePassenger, moreDetails: $moreDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DispatchRideImpl &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.phonePassenger, phonePassenger) ||
                other.phonePassenger == phonePassenger) &&
            (identical(other.moreDetails, moreDetails) ||
                other.moreDetails == moreDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    stationId,
    timestamp,
    origin,
    destination,
    cost,
    phonePassenger,
    moreDetails,
  );

  /// Create a copy of DispatchRide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DispatchRideImplCopyWith<_$DispatchRideImpl> get copyWith =>
      __$$DispatchRideImplCopyWithImpl<_$DispatchRideImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DispatchRideImplToJson(this);
  }
}

abstract class _DispatchRide implements DispatchRide {
  const factory _DispatchRide({
    required final int stationId,
    required final DateTime timestamp,
    required final String origin,
    required final String destination,
    required final int cost,
    required final String phonePassenger,
    required final String moreDetails,
  }) = _$DispatchRideImpl;

  factory _DispatchRide.fromJson(Map<String, dynamic> json) =
      _$DispatchRideImpl.fromJson;

  @override
  int get stationId;
  @override
  DateTime get timestamp;
  @override
  String get origin;
  @override
  String get destination;
  @override
  int get cost;
  @override
  String get phonePassenger;
  @override
  String get moreDetails;

  /// Create a copy of DispatchRide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DispatchRideImplCopyWith<_$DispatchRideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
