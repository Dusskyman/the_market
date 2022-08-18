// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'surname')
  String? get surname => throw _privateConstructorUsedError;
  @JsonKey(name: 'imagePath')
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'username') String? username,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'surname') String? surname,
      @JsonKey(name: 'imagePath') String? imagePath});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'username') String? username,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'surname') String? surname,
      @JsonKey(name: 'imagePath') String? imagePath});
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, (v) => _then(v as _$_UserDto));

  @override
  _$_UserDto get _value => super._value as _$_UserDto;

  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_UserDto(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(name: 'username') this.username,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'surname') this.surname,
      @JsonKey(name: 'imagePath') this.imagePath})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'surname')
  final String? surname;
  @override
  @JsonKey(name: 'imagePath')
  final String? imagePath;

  @override
  String toString() {
    return 'UserDto(username: $username, name: $name, surname: $surname, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname),
      const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {@JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'surname') final String? surname,
      @JsonKey(name: 'imagePath') final String? imagePath}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'surname')
  String? get surname;
  @override
  @JsonKey(name: 'imagePath')
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
