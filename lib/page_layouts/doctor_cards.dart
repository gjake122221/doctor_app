import 'package:flutter/material.dart';

import '../data/data_list.dart';
import '../pages/pages.dart';

class DoctorCards extends StatelessWidget {
  DoctorCards(this.doctorObject, this.ndx, this.otherIcons);
  final List<Map<String, String>> doctorObject;
  final int ndx;
  final Map otherIcons;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(doctorObject[ndx]['img'].toString()),
        title: Text('Dr. ${doctorObject[ndx]['name']}'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(doctorObject[ndx]['doc'].toString()),
            Row(
              children: [
                Image.asset(otherIcons['Icons_Star'], color: Colors.yellow),
                Image.asset(otherIcons['Icons_Star'], color: Colors.yellow),
                Image.asset(otherIcons['Icons_Star'], color: Colors.yellow),
                Image.asset(otherIcons['Icons_Star'], color: Colors.yellow),
                Image.asset(otherIcons['Icons_Star'], color: Colors.yellow),
              ],
            )
          ],
        ),
        isThreeLine: true,
        trailing: Container(
            width: 50,
            color: Color(0xffCCF5E1),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text('open', textAlign: TextAlign.center),
            )),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => newPage[ndx],
          ),
        ),
      ),
    );
  }
}

var doctorCards =
    List.generate(4, (index) => DoctorCards(doctors, index, othericons));
