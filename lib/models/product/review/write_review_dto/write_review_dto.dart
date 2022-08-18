import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_review_dto.freezed.dart';
part 'write_review_dto.g.dart';

@freezed
class WriteReviewDto with _$WriteReviewDto {
  const WriteReviewDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory WriteReviewDto({
    @JsonKey(name: 'rate') int? rate,
    @JsonKey(name: 'text') String? text,
  }) = _WriteReviewDto;

  factory WriteReviewDto.fromJson(Map<String, dynamic> json) => _$WriteReviewDtoFromJson(json);
}
