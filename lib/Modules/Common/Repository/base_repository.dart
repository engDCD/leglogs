import 'package:dio/dio.dart';
import 'package:leglogs/Modules/Common/Service/settings_service.dart';

abstract class BaseDioRepository {
  final _settings = SettingsService.to;
  late final Dio _dio;

  Dio get client => _dio;

  BaseDioRepository() {
    onInit();
  }

  void onInit();
}

abstract class BricksetBaseRepository extends BaseDioRepository {
  @override
  void onInit() {
    _dio = Dio(BaseOptions(baseUrl: 'https://${_settings.bricksetBaseURL!}/'));
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      options.queryParameters['apiKey'] = _settings.bricksetApplicationKey;
      options.queryParameters['userHash'] = ']q}Y7AX~mz';
      handler.next(options);
    }));
  }
}

abstract class RebrickableBaseRepository extends BaseDioRepository {
  @override
  void onInit() {
    _dio =
        Dio(BaseOptions(baseUrl: 'https://${_settings.rebrickableBaseURL!}/'));
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      options.queryParameters['key'] = _settings.rebrickableApplicationKey;
      handler.next(options);
    }, onError: (e, handler) {
      print(e);
    }));
  }
}
