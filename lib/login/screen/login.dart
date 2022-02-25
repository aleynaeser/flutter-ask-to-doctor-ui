import 'package:ask_app_ui/login/widgets/backButton.dart';
import 'package:ask_app_ui/login/widgets/beinzerContainer.dart';
import 'package:ask_app_ui/login/widgets/buildDivider.dart';
import 'package:ask_app_ui/login/widgets/buildForgot.dart';
import 'package:ask_app_ui/login/widgets/buildLoginForm.dart';
import 'package:ask_app_ui/login/widgets/loginButton.dart';
import 'package:ask_app_ui/login/widgets/loginTitle.dart';
import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
          child: Container(
      height: height,
      child: Stack(
          children: <Widget>[
            Positioned(
                top: -height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: BezierContainer()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: padding ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    title(),
                    const SizedBox(height: 92),
                    const buildLoginForm(),
                    const SizedBox(height: 32),
                    loginButton(),
                    const SizedBox(height: 8),
                    const buildForgot(),
                    const SizedBox(height: 32),
                    buildDivider(),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: backButton()),
          ],
      ),
    ),
        ));
  }
}

