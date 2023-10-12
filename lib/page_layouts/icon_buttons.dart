import 'package:flutter/material.dart';

import '../data/data_list.dart';

class PageIconButtons extends StatelessWidget {
  PageIconButtons(this.iconObjects, this.ndx);
  final List<Map<String, String>> iconObjects;
  final int ndx;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(int.parse(iconObjects[ndx]['color'].toString())),
                  child: IconButton(
                    icon: Image.asset(
                      iconObjects[ndx]['img'].toString(),
                      color: Colors.white,
                    ),
                    onPressed: () => '',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                  iconObjects[ndx]['title'].toString(),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

var pageIconButtons = List.generate(
  8,
  (index) => PageIconButtons(btnicons, index),
);
