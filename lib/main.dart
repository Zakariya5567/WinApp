import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:winapp/utils/themes.dart';
import 'package:winapp/view/authentication/signup_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey.shade100,
    statusBarColor:ConstColor.darkbrownColor,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness:Brightness.light,

    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      theme:  ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
      secondary:  ConstColor.darkbrownColor,
      primary:  ConstColor.darkbrownColor
  ),
),
      home: SignUpPage(),
    );
  }
}
