import 'package:flutter/material.dart';

import '../data/data_list.dart';

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
        trailing: Text('open'),
        onTap: () => '',
      ),
    );
  }
}

var doctorCards =
    List.generate(4, (index) => DoctorCards(doctors, index, othericons));
