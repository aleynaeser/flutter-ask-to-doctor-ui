import 'package:ask_app_ui/home/widget/storeCard.dart';
import 'package:ask_app_ui/model/doctors_json.dart';
import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

class BuildDoctorList extends StatefulWidget {
  const BuildDoctorList({Key? key}) : super(key: key);

  @override
  _BuildDoctorListState createState() => _BuildDoctorListState();
}

class _BuildDoctorListState extends State<BuildDoctorList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: padding, bottom: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: padding),
              child: Text(
                "Book a Doctor",
                style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.bold,
                    fontSize: subtitleFontSize),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(storeItems.length, (index) {
                  var store = storeItems[index];
                  if (index == 0) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left:padding, right: padding),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: StoreCard(width: 280, store: store),
                        ),
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(right: padding),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: StoreCard(width: 280, store: store),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
