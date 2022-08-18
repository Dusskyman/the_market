// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewerDto _$$_ReviewerDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ReviewerDto',
      json,
      ($checkedConvert) {
        final val = _$_ReviewerDto(
          id: $checkedConvert('id', (v) => v as int?),
          username: $checkedConvert('username', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ReviewerDtoToJson(_$_ReviewerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
