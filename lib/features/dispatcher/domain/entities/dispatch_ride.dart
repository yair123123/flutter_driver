import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'dispatch_ride.freezed.dart';
part 'dispatch_ride.g.dart';

DispatchRide dispatchRideFromJson(String str) => DispatchRide.fromJson(json.decode(str));

String dispatchRideToJson(DispatchRide data) => json.encode(data.toJson());

@freezed
class DispatchRide with _$DispatchRide {
  const factory DispatchRide({
        required int stationId,
        required DateTime timestamp,
        required String origin,
        required String destination,
        required int cost,
        required String phonePassenger,
        required String moreDetails,
  }) = _DispatchRide;

  factory DispatchRide.fromJson(Map<String, dynamic> json) => _$DispatchRideFromJson(json);
}


