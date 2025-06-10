import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cancel_ride.freezed.dart';
part 'cancel_ride.g.dart';

CancelRide cancelRideFromJson(String str) => CancelRide.fromJson(json.decode(str));

String cancelRideToJson(CancelRide data) => json.encode(data.toJson());

@freezed
class CancelRide with _$CancelRide {
  const factory CancelRide({
    required String rideId,
    required String reason,
  }) = _CancelRide;

  factory CancelRide.fromJson(Map<String, dynamic> json) => _$CancelRideFromJson(json);
}


