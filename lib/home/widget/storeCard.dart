import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final store;
  final double width;

  const StoreCard({
    Key? key,
    required this.store,
    this.width = 250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: width,
              height: 120,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                child: Image.network(
                  getImageNetwork(store["image"]),
                  fit: BoxFit.cover,
                ),
              )),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top:10, left: 10, right: 10, bottom:10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        store["name"] ?? "",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const IconButton(
                              icon: Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onPressed: null),
                          Text(
                            store["score"] ?? "",
                            style: const TextStyle(
                                color: Colors.amber, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  Text(
                    store["tag"] ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: subSize,
                      color: iconTextColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(80, 30),
                            side: BorderSide(width: 1, color: primary),
                            primary: scaffoldColor,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(padding), // <-- Radius
                            ),
                          ),
                          child: Text(
                            store["hospital"] ?? "",
                            style: const TextStyle(
                              color: primary,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
