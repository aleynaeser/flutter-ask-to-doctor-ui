import 'package:ask_app_ui/home/widget/buildCards.dart';
import 'package:ask_app_ui/home/widget/buildDoctorList.dart';
import 'package:ask_app_ui/home/widget/buildSearchBar.dart';
import 'package:ask_app_ui/home/widget/menuButton.dart';
import 'package:ask_app_ui/home/widget/profileButton.dart';
import 'package:ask_app_ui/login/widgets/beinzerContainer.dart';
import 'package:ask_app_ui/login/widgets/buildRegisterForm.dart';
import 'package:ask_app_ui/login/widgets/registerButton.dart';
import 'package:ask_app_ui/login/widgets/registerDivider.dart';
import 'package:ask_app_ui/utils/constant.dart';
import 'package:ask_app_ui/home/widget/buildImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: -height * .15,
                      right: -MediaQuery.of(context).size.width * .4,
                      child: BezierContainer()),
                  profileButton(),
                  menuButton(),
                  SearchBar(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: height * .3),
                        const SizedBox(
                          height: 8,
                        ),
                        buildCards(),
                        const SizedBox(
                          height: 16,
                        ),
                        BuildDoctorList(),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
