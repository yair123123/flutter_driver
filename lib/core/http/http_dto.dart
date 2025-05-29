import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_dto.freezed.dart';
part 'http_dto.g.dart';

@freezed
class HttpDto with _$HttpDto {
  const factory HttpDto({
    dynamic content,
    required bool success,
    required String error,
  }) = _HttpDto;

  factory HttpDto.fromJson(Map<String, dynamic> json) =>
      _$HttpDtoFromJson(json);
}
