import 'package:flutter/material.dart';

class buildForgot extends StatelessWidget {
  const buildForgot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
            'Forgot Password ?',
            style: TextStyle(color: Colors.black54)
        ),
      ),
    );
  }
}
