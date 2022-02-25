import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

Widget title() {
  return RichText(
    textAlign: TextAlign.center,
    text: const TextSpan(
        text: 'LO',
        style: TextStyle(
          fontSize: titleFontSize,
          fontWeight: FontWeight.w700,
          letterSpacing: 5,
          color: primary,
        ),
        children: [
          TextSpan(
            text: 'GO',
            style: TextStyle(color: secPrimary, fontSize: titleFontSize, letterSpacing: 5,),
          ),
        ]),
  );
}