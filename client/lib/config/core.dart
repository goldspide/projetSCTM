import 'package:client/config/config_api.dart';
import 'package:dio/dio.dart';

Dio? http = Http._getdio();

class Http {
  static Dio? _dio;

  static Dio? _getdio() {
    if (_dio == null) resetDio();
    return _dio;
  }

  static resetDio() {
    _dio = null;
    init();
  }

  static Future<void> init() async {
    if (_dio != null) return;

    BaseOptions options = BaseOptions(
        baseUrl: ConfigApi.apiUrl,
        connectTimeout: const Duration(seconds: 90),
        receiveTimeout: const Duration(seconds: 90),
        headers: {
          'Accept': "application/json",
          "Content-type": "application/json"
        },
        responseType: ResponseType.json);
    _dio = Dio(options);
  }
}
