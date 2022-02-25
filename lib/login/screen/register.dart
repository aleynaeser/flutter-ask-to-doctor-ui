import 'package:ask_app_ui/login/widgets/backButton.dart';
import 'package:ask_app_ui/login/widgets/beinzerContainer.dart';
import 'package:ask_app_ui/login/widgets/buildRegisterForm.dart';
import 'package:ask_app_ui/login/widgets/loginTitle.dart';
import 'package:ask_app_ui/login/widgets/registerButton.dart';
import 'package:ask_app_ui/login/widgets/registerDivider.dart';
import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                top: -MediaQuery.of(context).size.height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: const BezierContainer(),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: padding ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .2),
                      title(),
                      const SizedBox(
                        height: 92,
                      ),
                      const builRegisterForm(),
                      const SizedBox(
                        height: 32,
                      ),
                      registerButton(),
                      const SizedBox(height: 32),
                      registerDivider(),
                    ],
                  ),
                ),
              ),
              Positioned(top: 40, left: 0, child: backButton()),
            ],
          ),
        ),
      ),
    );
  }
}
