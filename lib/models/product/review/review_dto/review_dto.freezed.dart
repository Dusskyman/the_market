// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) {
  return _ReviewDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  int? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  ReviewerDto? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  int? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDtoCopyWith<ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDtoCopyWith<$Res> {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) then) =
      _$ReviewDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'product') int? product,
      @JsonKey(name: 'created_by') ReviewerDto? createdBy,
      @JsonKey(name: 'rate') int? rate,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'created_at') String? createdAt});

  $ReviewerDtoCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res> implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._value, this._then);

  final ReviewDto _value;
  // ignore: unused_field
  final $Res Function(ReviewDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? createdBy = freezed,
    Object? rate = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as ReviewerDto?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ReviewerDtoCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $ReviewerDtoCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$$_ReviewDtoCopyWith(
          _$_ReviewDto value, $Res Function(_$_ReviewDto) then) =
      __$$_ReviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'product') int? product,
      @JsonKey(name: 'created_by') ReviewerDto? createdBy,
      @JsonKey(name: 'rate') int? rate,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'created_at') String? createdAt});

  @override
  $ReviewerDtoCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$_ReviewDtoCopyWithImpl<$Res> extends _$ReviewDtoCopyWithImpl<$Res>
    implements _$$_ReviewDtoCopyWith<$Res> {
  __$$_ReviewDtoCopyWithImpl(
      _$_ReviewDto _value, $Res Function(_$_ReviewDto) _then)
      : super(_value, (v) => _then(v as _$_ReviewDto));

  @override
  _$_ReviewDto get _value => super._value as _$_ReviewDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? createdBy = freezed,
    Object? rate = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_ReviewDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as ReviewerDto?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_ReviewDto extends _ReviewDto {
  const _$_ReviewDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'product') this.product,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'rate') this.rate,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'created_at') this.createdAt})
      : super._();

  factory _$_ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'product')
  final int? product;
  @override
  @JsonKey(name: 'created_by')
  final ReviewerDto? createdBy;
  @override
  @JsonKey(name: 'rate')
  final int? rate;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'ReviewDto(id: $id, product: $product, createdBy: $createdBy, rate: $rate, text: $text, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      __$$_ReviewDtoCopyWithImpl<_$_ReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDtoToJson(
      this,
    );
  }
}

abstract class _ReviewDto extends ReviewDto {
  const factory _ReviewDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'product') final int? product,
      @JsonKey(name: 'created_by') final ReviewerDto? createdBy,
      @JsonKey(name: 'rate') final int? rate,
      @JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'created_at') final String? createdAt}) = _$_ReviewDto;
  const _ReviewDto._() : super._();

  factory _ReviewDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'product')
  int? get product;
  @override
  @JsonKey(name: 'created_by')
  ReviewerDto? get createdBy;
  @override
  @JsonKey(name: 'rate')
  int? get rate;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}
