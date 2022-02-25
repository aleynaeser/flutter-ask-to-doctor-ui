import 'package:ask_app_ui/home/page/home.dart';
import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loginButton() {
  return Builder(
    builder: (context) {
      return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                    spreadRadius: 2)
              ],
              gradient:  const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [backgroundColor, primary])),
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );
    }
  );
}