import 'package:ask_app_ui/login/screen/register.dart';
import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget registerButton() {
  return Builder(
    builder: (context) {
      return InkWell(
        onTap: () {
          Navigator.push(context, PageTransition(type: PageTransitionType.scale,alignment: Alignment.topRight,duration: Duration(seconds: 1), child: RegisterPage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: secPrimary.withAlpha(100),
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                    spreadRadius: 2)
              ],
              gradient:  const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [backgroundColor, primary])),
          child: const Text(
            'Register',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );
    }
  );
}