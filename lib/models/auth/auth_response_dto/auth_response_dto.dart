import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

@freezed
class AuthResponseDto with _$AuthResponseDto {
  const AuthResponseDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AuthResponseDto({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'message') String? message,
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) => _$AuthResponseDtoFromJson(json);
}
