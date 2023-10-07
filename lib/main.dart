import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'appstate/appstate.dart';
import 'pages/home_page.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Find Your Doctor',
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
