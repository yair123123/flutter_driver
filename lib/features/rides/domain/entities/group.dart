import 'package:driver_app/features/rides/domain/entities/ride.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'group.freezed.dart';
part 'group.g.dart';

Group groupFromJson(String str) => Group.fromJson(json.decode(str));

String groupToJson(Group data) => json.encode(data.toJson());

@freezed
class Group with _$Group {
  const factory Group({
    required String id,
    required String name,
    required List<Ride> rides,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}


