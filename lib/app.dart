import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_tour_app/features/routes/app_pages.dart';
import 'package:travel_tour_app/features/routes/bindings/controller_bindings.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: AllControllerBindings(),
    );
  }
}