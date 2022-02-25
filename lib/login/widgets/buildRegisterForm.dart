import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

class builRegisterForm extends StatelessWidget {
  const builRegisterForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          cursorColor: primary,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(0.0),
            labelText: 'Username',
            hintText: 'Username',
            hintStyle: const TextStyle(
              color: secPrimary,
              fontSize: 14.0,
            ),
            labelStyle: const TextStyle(
              color: primary,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: const Icon(
              Icons.person,
              color: primary,
              size: 18,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color:secPrimary, width: 2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: primary, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        TextField(
          cursorColor: primary,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(0.0),
            labelText: 'Email',
            hintText: 'e-mail',
            labelStyle: const TextStyle(
              color: primary,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
            hintStyle: const TextStyle(
              color: secPrimary,
              fontSize: 14.0,
            ),
            prefixIcon: const Icon(
              Icons.admin_panel_settings,
              color: primary,
              size: 18,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: secPrimary, width: 2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: primary, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        TextField(
          cursorColor: primary,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(0.0),
            labelText: 'Password',
            hintText: 'Password',
            hintStyle: const TextStyle(
              color: secPrimary,
              fontSize: 14.0,
            ),
            labelStyle: const TextStyle(
              color: primary,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: const Icon(
              Icons.password,
              color: primary,
              size: 18,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color:secPrimary, width: 2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            // floatingLabelStyle: TextStyle(
            //   color: Colors.black,
            //   fontSize: 18.0,
            // ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: primary, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}