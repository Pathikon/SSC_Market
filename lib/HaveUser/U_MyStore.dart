// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class u_store extends StatefulWidget {
  const u_store({Key? key}) : super(key: key);

  @override
  State<u_store> createState() => _u_storeState();
}

class _u_storeState extends State<u_store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.other_houses,
            size: 1,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        title: Text(
          'ຮ້ານຄ້າຂອງທ່ານ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        child: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      ProfileMenu(
                        icon: Icon(
                          Icons.add_alarm,
                          color: Colors.green,
                          size: 25,
                        ),
                        text: Text(
                          "ຕໍ່ອາຍຸການເຊົ່າ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        icons: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                          size: 25,
                        ),
                        press: () {},
                      ),
                      ProfileMenu(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.green,
                          size: 25,
                        ),
                        text: Text(
                          "ຂໍ້ມູນບັນຊີ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        icons: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                          size: 25,
                        ),
                        press: () {},
                      ),
                      ProfileMenu(
                        icon: Icon(
                          Icons.auto_stories,
                          color: Colors.green,
                          size: 25,
                        ),
                        text: Text("ຂໍ້ມູນຫ້ອງເຊົ່າ"),
                        icons: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                          size: 25,
                        ),
                        press: () {},
                      ),
                    ],
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

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    @required this.text,
    @required this.icon,
    @required this.icons,
    @required this.press,
  }) : super(key: key);

  final text, icon, icons;
  final press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: FlatButton(
          onPressed: press,
          child: Row(
            children: [
              Divider(),
              VerticalDivider(
                width: 20,
              ),
              icon,
              SizedBox(
                height: 60,
              ),
              VerticalDivider(
                width: 10,
              ),
              Expanded(child: text),
              icons,
            ],
          )),
    );
  }
}
