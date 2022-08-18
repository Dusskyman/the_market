import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_dto.freezed.dart';
part 'register_dto.g.dart';

@freezed
class RegisterDto with _$RegisterDto {
  const RegisterDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory RegisterDto({
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') String? password,
  }) = _RegisterDto;

  factory RegisterDto.fromJson(Map<String, dynamic> json) => _$RegisterDtoFromJson(json);
}
