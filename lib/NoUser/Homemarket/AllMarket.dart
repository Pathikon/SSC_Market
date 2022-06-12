import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/BottomBar.dart';
import 'package:ssc_market/NoUser/Homemarket/AllMarket/Apparel.dart';
import 'package:ssc_market/NoUser/Homemarket/AllMarket/Gold.dart';
import 'package:ssc_market/NoUser/Homemarket/AllMarket/electrical.dart';
import 'package:ssc_market/NoUser/Homemarket/AllMarket/food.dart';
import 'package:ssc_market/NoUser/Homemarket/AllMarket/meat.dart';

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
        elevation: 0,
        centerTitle: true,
        title: Text("ຜັງຮ້ານຄ້າທັງໝົດ"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(PageTransition(
                type: PageTransitionType.leftToRight, child: bottombar()));
          },
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
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ເລືອກໂຊນຂາຍເຄື່ອງຂອງທ່ານ",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                SizedBox(
                                  child: Image.asset(
                                    "assets/images/clothes.png",
                                    width: 100,
                                  ),
                                ),
                                Text(
                                  "ໂຊນຂາຍເຄື່ອງນຸ່ງຮົ່ມ",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 20),
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
                                child: golds()));
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
                                SizedBox(
                                  child: Image.asset(
                                    "assets/images/diamond.png",
                                    width: 100,
                                  ),
                                ),
                                Text(
                                  "ໂຊນຂາຍເຄື່ອງຊັບສິນມີຄ່າ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                          child: electrical()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(25),
                      width: 335,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Image.asset(
                              "assets/images/electrical-energy.png",
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              "ໂຊນຂາຍເຄື່ອງໃຊ້ໄຟຟ້າ ແລະ ເຄື່ອງໃຊ້ໃນຄົວເຮືອນ",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: foods()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(25),
                          width: 165,
                          height: 210,
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
                              SizedBox(
                                child: Image.asset(
                                  "assets/images/diet.png",
                                  width: 90,
                                ),
                              ),
                              Text(
                                "ໂຊນຂາຍເຄື່ອງບໍລິໂພກ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
                              child: meat()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(25),
                          width: 165,
                          height: 210,
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
                              SizedBox(
                                child: Image.asset(
                                  "assets/images/meat.png",
                                  width: 90,
                                ),
                              ),
                              Text(
                                "ໂຊນຂາຍຂອງສົດ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
      ),
    );
  }
}
