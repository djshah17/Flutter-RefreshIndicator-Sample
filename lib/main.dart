import 'package:flutter/material.dart';
import 'package:flutterrefreshindicatordemo/my_refresh_indicator_listview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyRefreshIndicatorListViewScreen(),
    );
  }
}
