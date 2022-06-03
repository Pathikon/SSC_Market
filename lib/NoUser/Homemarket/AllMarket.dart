import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/BottomBar.dart';

import 'Apparel.dart';

class allmarket extends StatefulWidget {
  const allmarket({Key? key}) : super(key: key);

  @override
  State<allmarket> createState() => _allmarketState();
}

class _allmarketState extends State<allmarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ຜັງຮ້ານຄ້າທັງໝົດ"),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushReplacement(PageTransition(
              type: PageTransitionType.leftToRight, child: bottombar())),
          icon: Icon(Icons.cancel_rounded),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "ເລືອກໂຊນຂາຍເຕື່ອງຂອງທ່ານ",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: apparel()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffFFE478),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: -23,
                              blurRadius: 17,
                              offset: Offset(1.0, 17.0))
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ໂຊນຂາຍເຄື່ອງນຸ່ງຮົ່ມ",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 25),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 125,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xffFFD609),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: -23,
                          blurRadius: 17,
                          offset: Offset(1.0, 17.0))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ໂຊນຂາຍເຄື່ອງສັບສິນມີຄ່າ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(25),
              width: 345,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xff66E5E1),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: -23,
                      blurRadius: 17,
                      offset: Offset(1.0, 17.0))
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ໂຊນຂາຍເຄື່ອງໃຊ້ໄຟຟ້າ ແລະ ເຄື່ອງໃຊ້ໃນຄົວເຮືອນ",
                    style: TextStyle(color: Colors.black54, fontSize: 25),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(25),
                  width: 165,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff66E56B),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: -23,
                          blurRadius: 17,
                          offset: Offset(1.0, 17.0))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ໂຊນຂາຍເຄື່ອງບໍລິໂພກ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  width: 165,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xffFF8161),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: -23,
                          blurRadius: 17,
                          offset: Offset(1.0, 17.0))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ໂຊນຂາຍຂອງສົດ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
