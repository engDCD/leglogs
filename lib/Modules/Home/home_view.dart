
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leglogs/Modules/Home/home_controller.dart';

class HomeView extends GetView<HomeController>{
  static String routeName = '/';
  static GetPage<HomeController> page = GetPage<HomeController>(
    name: HomeView.routeName,
    page: () => const HomeView(),
    binding: BindingsBuilder(() {
      Get.put(HomeController());
    }),
  );

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}