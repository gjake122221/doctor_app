import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../data/data_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthof = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: widthof,
                height: 50,
                child: ListTile(
                  leading: Image.asset('assets/icons/Icons_Menu_Burger.png'),
                  trailing: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/Group_22.png')),
                ),
              ).animate().fade(delay: 200.ms).slideX(),
              SizedBox(
                width: widthof,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Find',
                              style: TextStyle(color: Colors.blue),
                            ),
                            TextSpan(
                              text: ' Your Doctor',
                              style: TextStyle(color: Colors.lightBlueAccent),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: widthof,
                        height: 49,
                        child:
                            SearchBar(elevation: MaterialStatePropertyAll(5.0)),
                      ),
                    ],
                  ),
                ),
              ).animate().fade(delay: 400.ms).slideX(),
              SizedBox(
                width: widthof,
                height: 200,
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 4,
                  children: gridChildren,
                ),
              ).animate().fade(delay: 600.ms).slideX(),
              SizedBox(
                width: widthof,
                height: 326,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Doctors',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: () => '',
                          child: Text('View all'),
                        ),
                      ],
                    ),
                  ],
                ),
              ).animate().fade(delay: 800.ms).slideX(),
            ],
          ),
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
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(int.parse(btnicons[index]['color'].toString())),
              child: IconButton(
                icon: Image.asset(
                  btnicons[index]['img'].toString(),
                  color: Colors.white,
                ),
                onPressed: () => 'hello',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0),
            child: Text(
              btnicons[index]['title'].toString(),
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ]),
      ),
    ),
  ),
);
