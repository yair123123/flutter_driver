import 'package:freezed_annotation/freezed_annotation.dart';
import 'station.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String driver_key,
    required String username,
    required String gender,
    required double rating,
    required int monthly_rides_sum,
    required bool is_dispatcher,
    required List<Station> stations,
    // required bool status,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
