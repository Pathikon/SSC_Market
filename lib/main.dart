import 'package:flutter/material.dart';
import 'package:ssc_market/NoUser/BottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SSC Matket',
      theme: ThemeData(
        fontFamily: "Noto Sans Lao",
        primarySwatch: Colors.green,
      ),
      home: bottombar(),
    );
  }
}
