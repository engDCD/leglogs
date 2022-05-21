import 'package:get/get.dart';
import 'package:leglogs/Modules/Home/home_view.dart';
import 'package:leglogs/Modules/Set/set_view.dart';

abstract class Pages {
  static List<GetPage<GetxController>> data = [
    HomeView.page,
    SetView.page,
  ];
}
