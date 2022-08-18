// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterDto _$$_RegisterDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_RegisterDto',
      json,
      ($checkedConvert) {
        final val = _$_RegisterDto(
          username: $checkedConvert('username', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_RegisterDtoToJson(_$_RegisterDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
