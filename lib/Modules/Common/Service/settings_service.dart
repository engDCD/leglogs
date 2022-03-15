import 'package:get/get.dart';

class SettingsService extends GetxService {
  static SettingsService to = Get.find();

  String? bricksetApplicationKey;
  String? bricksetBaseURL;

  String? rebrickableApplicationKey;
  String? rebrickableBaseURL;

  Future<SettingsService> init() async {
    bricksetApplicationKey = '3-yKak-Wncr-d3beS';
    bricksetBaseURL = "brickset.com/api/v3.asmx";

    rebrickableApplicationKey = 'b909e790b2a0f551ad98cfa24c614bf5';
    rebrickableBaseURL = 'rebrickable.com/api/v3/lego';

    return this;
  }
}
