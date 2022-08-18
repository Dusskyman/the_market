import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const LoginDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LoginDto({
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') String? password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);
}
