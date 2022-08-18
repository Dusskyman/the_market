// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res> implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  final ProductDto _value;
  // ignore: unused_field
  final $Res Function(ProductDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? img = freezed,
    Object? text = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductDtoCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$_ProductDtoCopyWith(
          _$_ProductDto value, $Res Function(_$_ProductDto) then) =
      __$$_ProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$_ProductDtoCopyWithImpl<$Res> extends _$ProductDtoCopyWithImpl<$Res>
    implements _$$_ProductDtoCopyWith<$Res> {
  __$$_ProductDtoCopyWithImpl(
      _$_ProductDto _value, $Res Function(_$_ProductDto) _then)
      : super(_value, (v) => _then(v as _$_ProductDto));

  @override
  _$_ProductDto get _value => super._value as _$_ProductDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? img = freezed,
    Object? text = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_ProductDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_ProductDto extends _ProductDto {
  const _$_ProductDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'img') this.img,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'title') this.title})
      : super._();

  factory _$_ProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'img')
  final String? img;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'ProductDto(id: $id, img: $img, text: $text, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDtoCopyWith<_$_ProductDto> get copyWith =>
      __$$_ProductDtoCopyWithImpl<_$_ProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDtoToJson(
      this,
    );
  }
}

abstract class _ProductDto extends ProductDto {
  const factory _ProductDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'img') final String? img,
      @JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'title') final String? title}) = _$_ProductDto;
  const _ProductDto._() : super._();

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'img')
  String? get img;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDtoCopyWith<_$_ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}
