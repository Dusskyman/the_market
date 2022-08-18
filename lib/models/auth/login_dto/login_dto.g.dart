// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDto _$$_LoginDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_LoginDto',
      json,
      ($checkedConvert) {
        final val = _$_LoginDto(
          username: $checkedConvert('username', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LoginDtoToJson(_$_LoginDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
