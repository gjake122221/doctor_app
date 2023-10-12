import 'package:flutter/material.dart';

import '../data/data_list.dart';

class MakePages extends StatelessWidget {
  MakePages(this.doctorObject, this.ndx, this.otherIcons);
  final List<Map<String, String>> doctorObject;
  final int ndx;
  final Map otherIcons;
  @override
  Widget build(BuildContext context) {
    var widthof = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(doctorObject[ndx]['img'].toString()),
                IconButton(
                    icon: Image.asset(otherIcons['Icons_Back'].toString()),
                    onPressed: () => Navigator.pop(context)),
                Positioned(
                  left: 315,
                  child: IconButton(
                      icon: Image.asset(
                        otherIcons['Icons_Artboard'].toString(),
                      ),
                      onPressed: () => ''),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      title:
                          Text('DR. ${doctorObject[ndx]['name'].toString()}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(doctorObject[ndx]['doc'].toString()),
                          Divider(color: Colors.black),
                          Text('Description'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: widthof,
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Experience'),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: doctorObject[ndx]['exp'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            TextSpan(
                              text: 'yr',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(color: Colors.grey),
                  Column(
                    children: [
                      Text('Patient'),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: doctorObject[ndx]['ps'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            TextSpan(
                              text: 'ps',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(color: Colors.grey),
                  Column(
                    children: [
                      Text('Rating'),
                      Text(
                        '0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => '',
                  child: Image.asset(
                    otherIcons['Icons_Comment'].toString(),
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFF00CC6A)),
                  ),
                  onPressed: () => '',
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'Make an Appointment',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

var newPage =
    List.generate(4, (index) => MakePages(doctors, index, othericons));
