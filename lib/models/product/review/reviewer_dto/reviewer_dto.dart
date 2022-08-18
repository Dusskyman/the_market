import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviewer_dto.freezed.dart';
part 'reviewer_dto.g.dart';

@freezed
class ReviewerDto with _$ReviewerDto {
  const ReviewerDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory ReviewerDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
  }) = _ReviewerDto;

  factory ReviewerDto.fromJson(Map<String, dynamic> json) => _$ReviewerDtoFromJson(json);
}
