// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'write_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WriteReviewDto _$WriteReviewDtoFromJson(Map<String, dynamic> json) {
  return _WriteReviewDto.fromJson(json);
}

/// @nodoc
mixin _$WriteReviewDto {
  @JsonKey(name: 'rate')
  int? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteReviewDtoCopyWith<WriteReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteReviewDtoCopyWith<$Res> {
  factory $WriteReviewDtoCopyWith(
          WriteReviewDto value, $Res Function(WriteReviewDto) then) =
      _$WriteReviewDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'rate') int? rate, @JsonKey(name: 'text') String? text});
}

/// @nodoc
class _$WriteReviewDtoCopyWithImpl<$Res>
    implements $WriteReviewDtoCopyWith<$Res> {
  _$WriteReviewDtoCopyWithImpl(this._value, this._then);

  final WriteReviewDto _value;
  // ignore: unused_field
  final $Res Function(WriteReviewDto) _then;

  @override
  $Res call({
    Object? rate = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WriteReviewDtoCopyWith<$Res>
    implements $WriteReviewDtoCopyWith<$Res> {
  factory _$$_WriteReviewDtoCopyWith(
          _$_WriteReviewDto value, $Res Function(_$_WriteReviewDto) then) =
      __$$_WriteReviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'rate') int? rate, @JsonKey(name: 'text') String? text});
}

/// @nodoc
class __$$_WriteReviewDtoCopyWithImpl<$Res>
    extends _$WriteReviewDtoCopyWithImpl<$Res>
    implements _$$_WriteReviewDtoCopyWith<$Res> {
  __$$_WriteReviewDtoCopyWithImpl(
      _$_WriteReviewDto _value, $Res Function(_$_WriteReviewDto) _then)
      : super(_value, (v) => _then(v as _$_WriteReviewDto));

  @override
  _$_WriteReviewDto get _value => super._value as _$_WriteReviewDto;

  @override
  $Res call({
    Object? rate = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_WriteReviewDto(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_WriteReviewDto extends _WriteReviewDto {
  const _$_WriteReviewDto(
      {@JsonKey(name: 'rate') this.rate, @JsonKey(name: 'text') this.text})
      : super._();

  factory _$_WriteReviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_WriteReviewDtoFromJson(json);

  @override
  @JsonKey(name: 'rate')
  final int? rate;
  @override
  @JsonKey(name: 'text')
  final String? text;

  @override
  String toString() {
    return 'WriteReviewDto(rate: $rate, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WriteReviewDto &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_WriteReviewDtoCopyWith<_$_WriteReviewDto> get copyWith =>
      __$$_WriteReviewDtoCopyWithImpl<_$_WriteReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WriteReviewDtoToJson(
      this,
    );
  }
}

abstract class _WriteReviewDto extends WriteReviewDto {
  const factory _WriteReviewDto(
      {@JsonKey(name: 'rate') final int? rate,
      @JsonKey(name: 'text') final String? text}) = _$_WriteReviewDto;
  const _WriteReviewDto._() : super._();

  factory _WriteReviewDto.fromJson(Map<String, dynamic> json) =
      _$_WriteReviewDto.fromJson;

  @override
  @JsonKey(name: 'rate')
  int? get rate;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_WriteReviewDtoCopyWith<_$_WriteReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}
