import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory UserDto({
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'surname') String? surname,
    @JsonKey(name: 'imagePath') String? imagePath,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
