// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponseDto _$$_AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_AuthResponseDto',
      json,
      ($checkedConvert) {
        final val = _$_AuthResponseDto(
          success: $checkedConvert('success', (v) => v as bool?),
          token: $checkedConvert('token', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_AuthResponseDtoToJson(_$_AuthResponseDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'token': instance.token,
      'message': instance.message,
    };
