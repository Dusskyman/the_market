import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory ProductDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'img') String? img,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'title') String? title,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);
}
