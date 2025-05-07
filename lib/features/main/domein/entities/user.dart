import 'package:freezed_annotation/freezed_annotation.dart';
import 'station.dart';
import 'relation_station.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String jwt,
    required String gender,
    required List<RelationStation> relationsStation,
    required double rate,
    required int sumRides,
    required bool isDispatcher,
    required Station stationDispatch,
    required bool status,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
