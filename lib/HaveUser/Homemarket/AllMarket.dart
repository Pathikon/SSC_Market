import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/AllMarket/U_Gold.dart';
import 'package:ssc_market/HaveUser/Homemarket/AllMarket/U_electrical.dart';
import 'package:ssc_market/HaveUser/Homemarket/AllMarket/U_food.dart';
import 'package:ssc_market/HaveUser/Homemarket/AllMarket/U_meat.dart';

import 'AllMarket/U_Apparel.dart';

class u_allmarket extends StatefulWidget {
  const u_allmarket({Key? key}) : super(key: key);

  @override
  State<u_allmarket> createState() => _u_allmarketState();
}

class _u_allmarketState extends State<u_allmarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("ຜັງຮ້ານຄ້າທັງໝົດ"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.cancel_rounded),
        ),
      ),
      body: Container(
        color: Colors.green,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          child: SingleChildScrollView(
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
                              child: u_apparel()));
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
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 25),
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
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: u_golds()));
                        },
                        child: Container(
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: u_electrical()));
                  },
                  child: Container(
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
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: u_foods()));
                      },
                      child: Container(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: u_meat()));
                      },
                      child: Container(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
