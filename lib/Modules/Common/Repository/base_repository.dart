import 'package:get/get.dart';
import 'package:leglogs/Modules/Common/Service/settings_service.dart';

abstract class BricksetBaseProvider extends GetConnect{
  final _settings = SettingsService.to;

  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = 'http://${_settings.bricksetBaseURL}/';
    httpClient.addAuthenticator<dynamic>((request) async {
      request.headers['Authorization'] = 'Bearer ${_settings.bricksetBaseURL}';
      return request;
    });
    httpClient.maxAuthRetries = 1;
  }
}