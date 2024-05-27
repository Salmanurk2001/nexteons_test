import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nexteon_test/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // setPathUrlStrategy();
  // Get.put(CreateStudentController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
