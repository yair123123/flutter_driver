// To parse this JSON data, do
//
//     final ride = rideFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ride.freezed.dart';
part 'ride.g.dart';

Ride rideFromJson(String str) => Ride.fromJson(json.decode(str));

String rideToJson(Ride data) => json.encode(data.toJson());

@freezed
class Ride with _$Ride {
    const factory Ride({
        required int id,
        required int stationId,
        required int dispatcherId,
        required DateTime timestamp,
        required String details,
    }) = _Ride;

    factory Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);
}
