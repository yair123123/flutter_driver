import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'message.freezed.dart';
part 'message.g.dart';

Message messageFromJson(String str) => Message.fromJson(json.decode(str));
String messageToJson(Message data) => json.encode(data.toJson());

@freezed
class Message with _$Message {
  const factory Message({
    required int snederId,
    required String text,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
