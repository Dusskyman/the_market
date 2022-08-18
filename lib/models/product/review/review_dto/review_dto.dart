import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_market/models/product/review/reviewer_dto/reviewer_dto.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  const ReviewDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory ReviewDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'product') int? product,
    @JsonKey(name: 'created_by') ReviewerDto? createdBy,
    @JsonKey(name: 'rate') int? rate,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) => _$ReviewDtoFromJson(json);
}
