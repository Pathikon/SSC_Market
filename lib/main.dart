import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssc_market/NoUser/BottomBar.dart';
import 'package:ssc_market/splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: null));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SOD Matket',
      theme: ThemeData(
        fontFamily: "Noto Sans Lao",
        primarySwatch: Colors.green,
      ),
      home: splashs(),
    );
  }
}
