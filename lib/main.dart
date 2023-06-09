import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greengrocer/routes/app_pages.dart';
import 'package:greengrocer/screens/auth/controller/auth_controller.dart';

void main() {
  Get.put(AuthController());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Greengrocer",
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: PagesRoutes.splashRoute,
    );
  }
}
