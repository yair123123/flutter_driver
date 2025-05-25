import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'ride.dart';

part 'ride_dto.freezed.dart';
part 'ride_dto.g.dart';

RideDto rideDtoFromJson(String str) => RideDto.fromJson(json.decode(str));
String rideDtoToJson(RideDto data) => json.encode(data.toJson());

@freezed
class RideDto with _$RideDto {
  const factory RideDto({
    required String type,
    required Ride ride,
  }) = _RideDto;

  factory RideDto.fromJson(Map<String, dynamic> json) =>
      _$RideDtoFromJson(json);
}
