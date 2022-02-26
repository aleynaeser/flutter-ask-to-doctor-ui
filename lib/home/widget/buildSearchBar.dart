import 'package:ask_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController _editingController;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.12,
      left: 20,
      right: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: padding),
            child: Text(
              "Ask a Doctor",
              style: TextStyle(color: primary,
              fontWeight: FontWeight.bold, fontSize:subtitleFontSize),
            ),
          ),
          Stack(
            children: [
              Flexible(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 4.0, color: primary),
                    primary: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: TextField(
                    cursorColor: primary,
                    controller: _editingController,
                    onChanged: (_) => setState(() {}),
                    decoration: InputDecoration(
                      hintText: 'Search doctor or appointment ...',
                      hintStyle: TextStyle(color: primary.withOpacity(0.5)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: primary,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primary, width: 3),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                ),
              ),
              _editingController.text.trim().isEmpty
                  ? Positioned(
                      right: 0,
                      child: IconButton(
                          icon: Icon(Icons.search,
                              color: primary.withOpacity(.8)),
                          onPressed: null),
                    )
                  : Positioned(
                      right: 0,
                      child: IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        icon: Icon(Icons.clear, color: primary.withOpacity(.8)),
                        onPressed: () => setState(
                          () {
                            _editingController.clear();
                          },
                        ),
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
