import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_dto.freezed.dart';
part 'http_dto.g.dart';

@Freezed(genericArgumentFactories: true)
class HttpDto<T> with _$HttpDto<T> {
  const factory HttpDto({
    required T content,
    required bool success,
    required String error,
  }) = _HttpDto<T>;

  factory HttpDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$HttpDtoFromJson(json, fromJsonT);
}
