import 'package:get/get.dart';

class SettingsService extends GetxService {
  static SettingsService to = Get.find();

  String? bricksetApplicationKey;
  String? bricksetBaseURL;

  Future<SettingsService> init() async {
    bricksetApplicationKey = '3-yKak-Wncr-d3beS';
    bricksetBaseURL = "";
    return this;
  }
}