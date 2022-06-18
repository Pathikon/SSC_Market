import 'package:flutter/material.dart';
import 'package:ssc_market/NoUser/BottomBar.dart';

class splashs extends StatefulWidget {
  const splashs({Key? key}) : super(key: key);

  @override
  State<splashs> createState() => _splashsState();
}

class _splashsState extends State<splashs> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => bottombar()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/icons/logo.png",
                width: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
           
          ],
        ),
      ),
    );
  }
}
