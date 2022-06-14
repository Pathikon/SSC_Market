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
                child: Text(
                  "ການດຳເນີນການກຳລັງຖືກກວດສອບ . . .",
                  style: TextStyle(fontSize: 22, color: Colors.green),
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
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ));
  }
}
