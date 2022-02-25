import 'package:ask_app_ui/login/screen/register.dart';
import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

Widget buildDivider() {
  return Builder(
      builder: (context) {
        return Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.black45,
                    height: 36,
                  )),
            ),
            const Text(
              "Don't have an account?",
              style: TextStyle(color: Colors.black54),
            ),
            TextButton(
              onPressed: () { Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RegisterPage()));},
              child: const Text(
                  'Register',
                  style: TextStyle(color: primary)
              ),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: const Divider(
                    color: Colors.black45,
                    height: 36,
                  )),
            ),
          ],
        );
      }
  );
}