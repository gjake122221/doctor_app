import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../page_layouts/doctor_cards.dart';
import '../page_layouts/icon_buttons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthof = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
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
                    backgroundImage: AssetImage('assets/image/Group_22.png'),
                  ),
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
                        child: SearchBar(
                          elevation: MaterialStatePropertyAll(5.0),
                          backgroundColor: MaterialStatePropertyAll(
                            Color(0xFFe3e3e3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ).animate().fade(delay: 400.ms).slideX(),
              SizedBox(
                width: widthof,
                height: 180,
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 4,
                  children: pageIconButtons,
                ),
              ).animate().fade(delay: 600.ms).slideX(),
              SizedBox(
                width: widthof,
                height: 346,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Doctors',
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
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: doctorCards,
                      ),
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
