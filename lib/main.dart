import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

import 'home/page/home.dart';
import 'login/screen/login.dart';
import 'login/screen/welcome.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Ask Doctors UI',
    theme: ThemeData(
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primary,
      ),
    ),
    home: HomePage(),
  );
}
