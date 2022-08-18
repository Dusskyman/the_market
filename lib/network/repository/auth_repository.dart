import 'package:dio/src/dio.dart';
import 'package:the_market/models/auth/auth_response_dto/auth_response_dto.dart';
import 'package:the_market/models/auth/login_dto/login_dto.dart';
import 'package:the_market/models/auth/register_dto/register_dto.dart';
import 'package:the_market/network/repository/base_repository.dart';

class AuthRepository extends BaseRepository {
  AuthRepository(Dio dio) : super(dio);

  Future<AuthResponseDto> userLogin(LoginDto loginDto) async {
    final AuthResponseDto response = await api.login(loginDto.toJson());
    return response;
  }

  Future<AuthResponseDto> userRegister(RegisterDto registerDto) async {
    final AuthResponseDto response = await api.register(registerDto.toJson());
    return response;
  }
}
