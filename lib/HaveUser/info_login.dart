import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/Bottombar_lg.dart';

class infologin extends StatefulWidget {
  const infologin({Key? key}) : super(key: key);

  @override
  State<infologin> createState() => _infologinState();
}

class _infologinState extends State<infologin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ທ່ານຍັງບໍ່ທັນເຂົ້າສູ່ລະບົບ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                child: Text(
                  "ທ່ານຍັງບໍ່ທັນເຂົ້າສູ່ລະບົບເທື່ອ ກະລຸນາເຂົ້າສູ່ລະບົບກ່ອນ",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: bottombar_lg()));
                  },
                  label: Icon(Icons.arrow_forward_ios),
                  icon: Text(
                    "ເຂົ້າສູ່ລະບົບ",
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
