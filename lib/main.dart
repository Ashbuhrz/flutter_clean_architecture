import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // root
  @override
  Widget build(BuildContext context) {
    //Wrapping with GetMaterial instead of MaterialApp to get Routing,
    //StateManagement and Internalization etc.
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      //passing appThemeData from the app/ui/theme/app_theme.dart
      theme: appThemeData,
      defaultTransition: Transition.fade,
      //All pages are passed here with bindings and controller
      getPages: AppPages.pages,
    );
  }
}
