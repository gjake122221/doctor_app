import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                child: ListTile(
                  leading: Image.asset('assets/icons/Icons_Menu_Burger.png'),
                  trailing: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/Group_22.png')),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: ListTile(
                  title: Text('Find Your Doctor'),
                  subtitle: SearchBar(),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.orange,
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 4,
                  children: gridChildren,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.red,
                child: Placeholder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var gridChildren = List.generate(
  8,
  (index) => SizedBox(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Card(
              child: Image.asset('assets/icons/007_stethoscope.png'),
            ),
          ),
          Text('temp'),
        ]),
      ),
    ),
  ),
);
