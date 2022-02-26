import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

Widget buildCards() {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: white,
                shadowColor:primary,
                onPrimary: primary,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                minimumSize: Size(180, 115),
              ),
              onPressed: () {},
              child: Column(
                children: const [
                  Icon(Icons.question_answer, size: iconSize,),
                  Text("Ask a Doctor", style: TextStyle(color:iconTextColor, fontSize: 17) )
                ],),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: white,
                shadowColor: primary,
                onPrimary: primary,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                minimumSize: Size(180, 115), //////// HERE
              ),
              onPressed: () {},
              child: Column(
                children: const [
                  Icon(Icons.call, size: iconSize,),
                  Text("Emergency Call", style: TextStyle(color:iconTextColor, fontSize: 17) )
                ],),
            )
          ],

        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:   [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: white,
            shadowColor: primary,
            onPrimary: primary,
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            minimumSize: Size(180, 115),   //////// HERE
          ),
          onPressed: () {},
          child: Column(
            children: const [
              Icon(Icons.local_hospital, size: iconSize,),
              Text("New Appointment", style: TextStyle(color:iconTextColor, fontSize: 17) )
            ],),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary:white,
            shadowColor: primary,
            onPrimary: primary,
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            minimumSize: Size(180, 115),
          ),
          onPressed: () {},
          child: Column(
            children: const [
              Icon(Icons.assignment_ind, size: iconSize,),
              Text("Special Visit", style: TextStyle(color:iconTextColor, fontSize: 17) )
            ],),
        )
      ],)

    ],

  );
}
