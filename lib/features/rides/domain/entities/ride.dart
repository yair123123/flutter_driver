import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ride.freezed.dart';
part 'ride.g.dart';

Ride rideFromJson(String str) => Ride.fromJson(json.decode(str));
String rideToJson(Ride data) => json.encode(data.toJson());

@freezed
class Ride with _$Ride {
  const factory Ride({
    required String id,
    required String details,
    required String dispatcherId,
    required String stationId,
    required DateTime timestamp,
  }) = _Ride;

  factory Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);
}
