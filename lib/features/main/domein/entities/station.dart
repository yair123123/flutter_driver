import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

@freezed
class Station with _$Station {
  const factory Station({
    required int station_id,
    required String station_name,
    String? driver_status_name,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}