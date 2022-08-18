import 'package:dio/dio.dart';
import 'package:the_market/network/api/rest_client.dart';

abstract class BaseRepository {
  BaseRepository(this.dio) : api = RestClient(dio);

  final Dio dio;
  final RestClient api;
}
