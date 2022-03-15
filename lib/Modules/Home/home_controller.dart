import 'package:get/get.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set_collection.dart';
import 'package:leglogs/Modules/Home/home_repository.dart';

class HomeController extends GetxController
    with StateMixin<BricksetSetCollection> {
  Future<void> loadThemes() async {
    change(null, status: RxStatus.loading());

    var data = await HomeRepository.to.getNewReleasesSets();

    for (final set in data.sets) {
      await set.loadfromImage(set.image.imageURL);
    }

    change(data, status: RxStatus.success());
  }
}
