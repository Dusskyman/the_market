// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterDto _$RegisterDtoFromJson(Map<String, dynamic> json) {
  return _RegisterDto.fromJson(json);
}

/// @nodoc
mixin _$RegisterDto {
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDtoCopyWith<RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDtoCopyWith<$Res> {
  factory $RegisterDtoCopyWith(
          RegisterDto value, $Res Function(RegisterDto) then) =
      _$RegisterDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$RegisterDtoCopyWithImpl<$Res> implements $RegisterDtoCopyWith<$Res> {
  _$RegisterDtoCopyWithImpl(this._value, this._then);

  final RegisterDto _value;
  // ignore: unused_field
  final $Res Function(RegisterDto) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterDtoCopyWith<$Res>
    implements $RegisterDtoCopyWith<$Res> {
  factory _$$_RegisterDtoCopyWith(
          _$_RegisterDto value, $Res Function(_$_RegisterDto) then) =
      __$$_RegisterDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$_RegisterDtoCopyWithImpl<$Res> extends _$RegisterDtoCopyWithImpl<$Res>
    implements _$$_RegisterDtoCopyWith<$Res> {
  __$$_RegisterDtoCopyWithImpl(
      _$_RegisterDto _value, $Res Function(_$_RegisterDto) _then)
      : super(_value, (v) => _then(v as _$_RegisterDto));

  @override
  _$_RegisterDto get _value => super._value as _$_RegisterDto;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_RegisterDto(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_RegisterDto extends _RegisterDto {
  const _$_RegisterDto(
      {@JsonKey(name: 'username') this.username,
      @JsonKey(name: 'password') this.password})
      : super._();

  factory _$_RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDtoFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'RegisterDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterDto &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterDtoCopyWith<_$_RegisterDto> get copyWith =>
      __$$_RegisterDtoCopyWithImpl<_$_RegisterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDtoToJson(
      this,
    );
  }
}

abstract class _RegisterDto extends RegisterDto {
  const factory _RegisterDto(
      {@JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'password') final String? password}) = _$_RegisterDto;
  const _RegisterDto._() : super._();

  factory _RegisterDto.fromJson(Map<String, dynamic> json) =
      _$_RegisterDto.fromJson;

  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterDtoCopyWith<_$_RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}
