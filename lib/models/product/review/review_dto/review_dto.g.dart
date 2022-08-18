// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDto _$$_ReviewDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ReviewDto',
      json,
      ($checkedConvert) {
        final val = _$_ReviewDto(
          id: $checkedConvert('id', (v) => v as int?),
          product: $checkedConvert('product', (v) => v as int?),
          createdBy: $checkedConvert(
              'created_by',
              (v) => v == null
                  ? null
                  : ReviewerDto.fromJson(v as Map<String, dynamic>)),
          rate: $checkedConvert('rate', (v) => v as int?),
          text: $checkedConvert('text', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'createdBy': 'created_by', 'createdAt': 'created_at'},
    );

Map<String, dynamic> _$$_ReviewDtoToJson(_$_ReviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'created_by': instance.createdBy?.toJson(),
      'rate': instance.rate,
      'text': instance.text,
      'created_at': instance.createdAt,
    };
