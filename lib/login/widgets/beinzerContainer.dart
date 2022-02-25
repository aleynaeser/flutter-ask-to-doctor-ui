import 'dart:math';

import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

import 'customClipper.dart';

class BezierContainer extends StatelessWidget {
  const BezierContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Transform.rotate(
            angle: -pi / 3.5,
            child: ClipPath(
              clipper: ClipPainter(),
              child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .5,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [backgroundColor, primary]
                      )
                  ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
