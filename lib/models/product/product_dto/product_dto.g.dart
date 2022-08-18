// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ProductDto',
      json,
      ($checkedConvert) {
        final val = _$_ProductDto(
          id: $checkedConvert('id', (v) => v as int?),
          img: $checkedConvert('img', (v) => v as String?),
          text: $checkedConvert('text', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'text': instance.text,
      'title': instance.title,
    };
