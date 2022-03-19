import 'dart:convert';

import 'package:get/get.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set_collection.dart';
import 'package:leglogs/Modules/Common/Repository/base_repository.dart';

class HomeRepository extends BricksetBaseRepository {
  static HomeRepository to = Get.find();

  Future<BricksetSetCollection> getUserSets() async {
    var resp = await client
        .get('https://brickset.com/api/v3.asmx/getSets?params={\'owned\':1}');
    return BricksetSetCollection.fromJson(json.decode(resp.data));
  }
}
