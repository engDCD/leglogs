import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leglogs/Modules/Home/home_controller.dart';
import 'package:leglogs/Modules/Home/home_repository.dart';
import 'package:leglogs/Widgets/set_card.dart';

class HomeView extends GetView<HomeController> {
  static String routeName = '/';
  static GetPage<HomeController> page = GetPage<HomeController>(
    name: HomeView.routeName,
    page: () => const HomeView(),
    binding: BindingsBuilder(() {
      Get.put(HomeRepository());
      Get.put(HomeController());
    }),
  );

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.loadThemes();

    return Scaffold(
      body: controller.obx(
        (newReleases) => CarouselSlider(
          items: newReleases?.sets
              .map(
                (set) => SetCard(
                  set: set,
                ),
              )
              .toList(),
          options: CarouselOptions(height: 400.0),
        ),
        onLoading: const CircularProgressIndicator(),
        onEmpty: const Text('No data found'),
        onError: (error) => Text(error ?? 'Generic Error'),
      ),
    );
  }
}
