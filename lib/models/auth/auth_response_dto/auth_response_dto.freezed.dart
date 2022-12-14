// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) {
  return _AuthResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseDto {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseDtoCopyWith<AuthResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseDtoCopyWith<$Res> {
  factory $AuthResponseDtoCopyWith(
          AuthResponseDto value, $Res Function(AuthResponseDto) then) =
      _$AuthResponseDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$AuthResponseDtoCopyWithImpl<$Res>
    implements $AuthResponseDtoCopyWith<$Res> {
  _$AuthResponseDtoCopyWithImpl(this._value, this._then);

  final AuthResponseDto _value;
  // ignore: unused_field
  final $Res Function(AuthResponseDto) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? token = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthResponseDtoCopyWith<$Res>
    implements $AuthResponseDtoCopyWith<$Res> {
  factory _$$_AuthResponseDtoCopyWith(
          _$_AuthResponseDto value, $Res Function(_$_AuthResponseDto) then) =
      __$$_AuthResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$_AuthResponseDtoCopyWithImpl<$Res>
    extends _$AuthResponseDtoCopyWithImpl<$Res>
    implements _$$_AuthResponseDtoCopyWith<$Res> {
  __$$_AuthResponseDtoCopyWithImpl(
      _$_AuthResponseDto _value, $Res Function(_$_AuthResponseDto) _then)
      : super(_value, (v) => _then(v as _$_AuthResponseDto));

  @override
  _$_AuthResponseDto get _value => super._value as _$_AuthResponseDto;

  @override
  $Res call({
    Object? success = freezed,
    Object? token = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AuthResponseDto(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_AuthResponseDto extends _AuthResponseDto {
  const _$_AuthResponseDto(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'token') this.token,
      @JsonKey(name: 'message') this.message})
      : super._();

  factory _$_AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AuthResponseDto(success: $success, token: $token, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseDto &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_AuthResponseDtoCopyWith<_$_AuthResponseDto> get copyWith =>
      __$$_AuthResponseDtoCopyWithImpl<_$_AuthResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseDtoToJson(
      this,
    );
  }
}

abstract class _AuthResponseDto extends AuthResponseDto {
  const factory _AuthResponseDto(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'token') final String? token,
      @JsonKey(name: 'message') final String? message}) = _$_AuthResponseDto;
  const _AuthResponseDto._() : super._();

  factory _AuthResponseDto.fromJson(Map<String, dynamic> json) =
      _$_AuthResponseDto.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseDtoCopyWith<_$_AuthResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
