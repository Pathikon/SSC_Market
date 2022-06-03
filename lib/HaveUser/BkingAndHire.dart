import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/Homemarket/AllMarket.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/Bottombar_lg.dart';

class bkanehire extends StatefulWidget {
  const bkanehire({Key? key}) : super(key: key);

  @override
  State<bkanehire> createState() => _bkanehireState();
}

class _bkanehireState extends State<bkanehire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ຈອງ ແລະ ເຊົ່າ"),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushReplacement(PageTransition(
              type: PageTransitionType.leftToRight, child: allmarket())),
          icon: Icon(Icons.cancel_rounded),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                    "ທ່ານຕ້ອງການ ຈອງ ຫຼື ເຊົ່າຫ້ອງ ກະລຸນາເລືອກຕາມດ້ານລຸ່ມນີ້",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: bottombar_lg()));
                  },
                  label: Icon(Icons.arrow_forward_ios),
                  icon: Text(
                    "ຈອງຫ້ອງເຊົ່າ",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: bottombar_lg()));
                  },
                  label: Icon(Icons.arrow_forward_ios),
                  icon: Text(
                    "ເຊົ່າຫ້ອງເຊົ່າ",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
