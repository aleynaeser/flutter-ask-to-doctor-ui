import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

Widget profileButton() {
  return Builder(builder: (context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.05,
      right: padding ,
      child: const Icon(
        Icons.account_circle,
        color: white,
        size:40,
      ),
    );
  });
}
