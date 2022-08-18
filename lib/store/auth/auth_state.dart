import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';

class AuthState {
  final UserDto? userDto;
  final bool hasConnection;
  AuthState({
    required this.userDto,
    required this.hasConnection,
  });

  factory AuthState.initial() {
    return AuthState(
      userDto: null,
      hasConnection: true,
    );
  }

  AuthState copyWith({UserDto? userDto, bool? hasConnection}) {
    return AuthState(
      userDto: userDto ?? this.userDto,
      hasConnection: hasConnection ?? this.hasConnection,
    );
  }
}
