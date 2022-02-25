import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

Widget backButton() {
  return Builder(
    builder: (context) {
      return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: const Icon(Icons.keyboard_arrow_left, color: backgroundColor, ),
              ),
              const Text('Back',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
            ],
          ),
        ),
      );
    }
  );
}