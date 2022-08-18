// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WriteReviewDto _$$_WriteReviewDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_WriteReviewDto',
      json,
      ($checkedConvert) {
        final val = _$_WriteReviewDto(
          rate: $checkedConvert('rate', (v) => v as int?),
          text: $checkedConvert('text', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_WriteReviewDtoToJson(_$_WriteReviewDto instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'text': instance.text,
    };
