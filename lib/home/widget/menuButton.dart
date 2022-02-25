import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

Widget menuButton() {
  return Builder(builder: (context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.05,
      left: padding,
      child: const Icon(
        Icons.menu,
        color: primary,
      ),
    );
  });
}
