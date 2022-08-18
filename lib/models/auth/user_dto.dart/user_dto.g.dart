// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_UserDto',
      json,
      ($checkedConvert) {
        final val = _$_UserDto(
          username: $checkedConvert('username', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          surname: $checkedConvert('surname', (v) => v as String?),
          imagePath: $checkedConvert('imagePath', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'surname': instance.surname,
      'imagePath': instance.imagePath,
    };
