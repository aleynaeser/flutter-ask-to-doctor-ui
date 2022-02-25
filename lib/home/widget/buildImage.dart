import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buildImage extends StatelessWidget {
  const buildImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          alignment: Alignment.topRight,
            children: [
          Image.asset(
            background,
            height: 200,
          ),
              Positioned(
                // The Positioned widget is used to position the text inside the Stack widget
                top: 10,
                left: 10,
                child: Container(
                  // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                  width: 300,
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size:50
                  ),
                ),
              ),
        ]),
      ],
    );
  }
}
