import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leglogs/Modules/Set/set_controller.dart';

class SetView extends StatelessWidget {
  static String routeName = '/set';
  static GetPage<SetController> page = GetPage<SetController>(
    name: SetView.routeName,
    page: () => const SetView(),
    // binding: BindingsBuilder(() {
    //   Get.put(HomeRepository());
    //   Get.put(HomeController());
    // }),
  );

  const SetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TextField(),
          TextButton(
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Text('close'),
          )
        ],
      ),
    );
  }
}
