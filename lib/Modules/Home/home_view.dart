import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:leglogs/Modules/Home/home_controller.dart';
import 'package:leglogs/Modules/Home/home_repository.dart';
import 'package:leglogs/Widgets/chart_bytheme.dart';
import 'package:leglogs/Widgets/chart_bytheme_pieces.dart';
import 'package:leglogs/Widgets/set_card.dart';
import 'package:leglogs/Widgets/set_collection_summary_bar.dart';

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
        (setData) => SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverLayoutBuilder(
                builder: (context, constraints) {
                  print(constraints.scrollOffset.toString());
                  return SliverAppBar(
                    backgroundColor: constraints.scrollOffset == 0
                        ? Colors.black38
                        : Colors.transparent,
                    expandedHeight: context.width * 450 / 768,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: const EdgeInsets.symmetric(vertical: 4),
                      title: SetCollectionSummaryBar(setCollection: setData!),
                      background: Container(
                        color: Colors.white,
                        child: CarouselSlider(
                          items: setData.sets
                              ?.map(
                                (set) => SetCard(
                                  set: set,
                                ),
                              )
                              .toList(),
                          options: CarouselOptions(
                            autoPlay: true,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SliverFillRemaining(
                child: PageView(
                  children: [
                    ChartByTheme.fromCollection(collection: setData!),
                    ChartByThemeXPieces.fromCollection(collection: setData),
                  ],
                ),
              ),
            ],
          ),
        ),
        onLoading: const Center(
          child: SpinKitSquareCircle(
            color: Colors.red,
          ),
        ),
        onEmpty: const Text('No data found'),
        onError: (error) => Text(error ?? 'Generic Error'),
      ),
    );
  }
}
