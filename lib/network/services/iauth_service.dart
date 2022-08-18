import 'package:the_market/models/auth/auth_response_dto/auth_response_dto.dart';
import 'package:the_market/models/auth/login_dto/login_dto.dart';
import 'package:the_market/models/auth/register_dto/register_dto.dart';

abstract class IAuthService {
  Future<AuthResponseDto> register({required RegisterDto registerDto});
  Future<AuthResponseDto> login({required LoginDto loginDto});
}
