import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class processing extends StatefulWidget {
  const processing({Key? key}) : super(key: key);

  @override
  State<processing> createState() => _processingState();
}

class _processingState extends State<processing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "ການດຳເນີນການ",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "ການດຳເນີນການກຳລັງຖືກກວດສອບ . . .",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Image.asset(
                "assets/icons/steward.png",
                width: 180,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                "ພະນັກງານກຳລັງດຳເນີນການ ກະລຸນາລໍຖ້າ",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: LinearProgressIndicator(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(),
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 49, 128, 51),
                  ),
                  child: Center(
                    child: Text(
                      "ກັບໄປໜ້າຫຼັກ",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 185, 46, 36),
                  ),
                  child: Center(
                    child: Text(
                      "ຍົກເລີກ",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
