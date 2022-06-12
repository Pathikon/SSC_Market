// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/Tor_Vela_rental.dart';

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
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Stack(children: <Widget>[
                          CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                                  AssetImage("assets/icons/user.png")),
                          Positioned(
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.camera_alt,
                                size: 35,
                              ),
                            ),
                            bottom: 0.0,
                            right: 0.0,
                          ),
                        ]),
                      ),
                      Container(
                        width: 240,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 255, 247, 175),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "ປາທິກອນ ພົມມະສານ",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Divider(),
                            Container(
                              child: Text("ຮ້ານຂາຍເສື້ອຜ້າທົ່ວໄປ",
                                  style: TextStyle(fontSize: 18)),
                            ),
                            Divider(),
                            Container(
                              child: Text("020 97625343",
                                  style: TextStyle(fontSize: 18)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            dateline(
                              icons: Icons.timelapse,
                              text: "ມື້ເຂົ້າເຊົ່າ",
                              dates: " 12/12/2022",
                            ),
                            Divider(
                              height: 10,
                            ),
                            dateline(
                              icons: Icons.timelapse,
                              text: "ມື້ໝົດອາຍຸ",
                              dates: " 12/12/2023",
                            ),
                            Divider(
                              height: 10,
                            ),
                            dateline(
                              icons: Icons.timer,
                              text: "ໄລຍະເວລາ ",
                              dates: " 356 " + "ວັນ",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
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
                        press: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: tor_vela()));
                        },
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
                        text: Text(
                          "ຂໍ້ມູນຫ້ອງເຊົ່າ",
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
                          Icons.power_settings_new,
                          color: Colors.red,
                          size: 25,
                        ),
                        text: Text(
                          "ອອກຈາກລະບົບ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        icons: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 1,
                        ),
                        press: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text(
                              'ທ່ານຕ້ອງການອອກຈາກລະບົບແທ້ຫຼືບໍ່?',
                              textAlign: TextAlign.center,
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('ຍົກເລີກ'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('ອອກຈາກລະບົບ'),
                              ),
                            ],
                          ),
                        ),
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

class dateline extends StatelessWidget {
  final String text;
  final String dates;
  final icons;
  const dateline({
    Key? key,
    required this.text,
    required this.dates,
    this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Column(
        children: [
          SizedBox(
            child: Icon(
              icons,
              color: Color.fromARGB(255, 207, 187, 0),
              size: 45,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            child: Column(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 53, 53, 53)),
                ),
                Text(
                  dates,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 207, 187, 0)),
                ),
              ],
            ),
          ),
        ],
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
