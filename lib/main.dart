import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leglogs/Modules/Common/Service/settings_service.dart';
import 'package:leglogs/Modules/Home/home_view.dart';
import 'package:leglogs/Modules/pages.dart';

void main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  await Get.putAsync(() => SettingsService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Leglogs App',
      getPages: Pages.data,
      initialRoute: HomeView.routeName,
    );
  }
}
