import 'package:the_market/models/auth/auth_response_dto/auth_response_dto.dart';
import 'package:the_market/models/auth/login_dto/login_dto.dart';
import 'package:the_market/models/auth/register_dto/register_dto.dart';
import 'package:the_market/network/dio_config.dart';
import 'package:the_market/network/repository/auth_repository.dart';
import 'package:the_market/network/services/iauth_service.dart';

class AuthService implements IAuthService {
  AuthService._();

  static final AuthService _authService = AuthService._();

  static AuthService instance() => _authService;

  @override
  Future<AuthResponseDto> login({required LoginDto loginDto}) {
    return AuthRepository(DioConfig.instance.provideUnAuthorizedDio()).userLogin(loginDto);
  }

  @override
  Future<AuthResponseDto> register({required RegisterDto registerDto}) {
    return AuthRepository(DioConfig.instance.provideUnAuthorizedDio()).userRegister(registerDto);
  }
}
