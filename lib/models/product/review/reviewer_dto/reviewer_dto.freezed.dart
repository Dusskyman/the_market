// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reviewer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewerDto _$ReviewerDtoFromJson(Map<String, dynamic> json) {
  return _ReviewerDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewerDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewerDtoCopyWith<ReviewerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewerDtoCopyWith<$Res> {
  factory $ReviewerDtoCopyWith(
          ReviewerDto value, $Res Function(ReviewerDto) then) =
      _$ReviewerDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username});
}

/// @nodoc
class _$ReviewerDtoCopyWithImpl<$Res> implements $ReviewerDtoCopyWith<$Res> {
  _$ReviewerDtoCopyWithImpl(this._value, this._then);

  final ReviewerDto _value;
  // ignore: unused_field
  final $Res Function(ReviewerDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ReviewerDtoCopyWith<$Res>
    implements $ReviewerDtoCopyWith<$Res> {
  factory _$$_ReviewerDtoCopyWith(
          _$_ReviewerDto value, $Res Function(_$_ReviewerDto) then) =
      __$$_ReviewerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username});
}

/// @nodoc
class __$$_ReviewerDtoCopyWithImpl<$Res> extends _$ReviewerDtoCopyWithImpl<$Res>
    implements _$$_ReviewerDtoCopyWith<$Res> {
  __$$_ReviewerDtoCopyWithImpl(
      _$_ReviewerDto _value, $Res Function(_$_ReviewerDto) _then)
      : super(_value, (v) => _then(v as _$_ReviewerDto));

  @override
  _$_ReviewerDto get _value => super._value as _$_ReviewerDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_ReviewerDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_ReviewerDto extends _ReviewerDto {
  const _$_ReviewerDto(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'username') this.username})
      : super._();

  factory _$_ReviewerDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewerDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;

  @override
  String toString() {
    return 'ReviewerDto(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewerDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewerDtoCopyWith<_$_ReviewerDto> get copyWith =>
      __$$_ReviewerDtoCopyWithImpl<_$_ReviewerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewerDtoToJson(
      this,
    );
  }
}

abstract class _ReviewerDto extends ReviewerDto {
  const factory _ReviewerDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'username') final String? username}) = _$_ReviewerDto;
  const _ReviewerDto._() : super._();

  factory _ReviewerDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewerDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewerDtoCopyWith<_$_ReviewerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
