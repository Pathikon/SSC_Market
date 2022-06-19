// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/Edit_Data_accout_store.dart';
import 'package:ssc_market/HaveUser/Homemarket/Tor_Vela_rental.dart';
import 'package:ssc_market/NoUser/BottomBar.dart';

class u_store extends StatefulWidget {
  const u_store({Key? key}) : super(key: key);

  @override
  State<u_store> createState() => _u_storeState();
}

class _u_storeState extends State<u_store> {
  XFile? _image;
  late String urlImag;
  late var imagepath;

  ImagePicker? picker = ImagePicker();
  Future getimagePic() async {
    final XFile? pickedFile = await picker!.pickImage(
      source: ImageSource.gallery,
      maxWidth: 2000,
      maxHeight: 2000,
    );
    setState(() {
      _image = pickedFile!;
      imagepath = _image!.path;
    });
  }

  Future getimageCam() async {
    final XFile? pickedFile = await picker!.pickImage(
      source: ImageSource.camera,
      maxWidth: 2000,
      maxHeight: 2000,
    );
    setState(() {
      _image = pickedFile!;
      imagepath = _image!.path;
    });
  }

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
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          height: double.infinity,
          child: SingleChildScrollView(
            child: Container(
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
                                onTap: () {
                                  changePic(context);
                                },
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
                          width: 200,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 251, 223),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "ປາທິກອນ ພົມມະສານ",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              Divider(),
                              Container(
                                child: Text("ຮ້ານຂາຍເສື້ອຜ້າທົ່ວໄປ",
                                    style: TextStyle(fontSize: 15)),
                              ),
                              Divider(),
                              Container(
                                child: Text("020 97625343",
                                    style: TextStyle(fontSize: 15)),
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
                            " ຕໍ່ອາຍຸການເຊົ່າ",
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
                            " ແກ້ໄຂຂໍ້ມູນຜູ້ໃຊ້",
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
                                child: edit_data_accout_st()));
                          },
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
                          press: () => Exits(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> changePic(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        titlePadding: const EdgeInsets.all(0),
        title: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "ເລືອກຮູບໂປຟາຍຂອງທ່ານ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                  const SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: FlatButton(
                onPressed: getimageCam,
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(child: const Icon(Icons.camera_alt)),
                        const SizedBox(
                          width: 20,
                        ),
                        const SizedBox(
                          child: const Text(
                            "ກ້ອງຖ່າຍຮູບ",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: FlatButton(
                onPressed: getimagePic,
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(child: const Icon(Icons.photo)),
                        const SizedBox(
                          width: 20,
                        ),
                        const SizedBox(
                          child: const Text(
                            "ຄັງຮູບພາບ",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> Exits(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(
          'ທ່ານຕ້ອງການອອກຈາກລະບົບແທ້ຫຼືບໍ່?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text(
                    'ຍົກເລີກ',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(10)),
                width: 130,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: bottombar())),
                  child:
                      const Text('ອອກຈາກລະບົບ', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ],
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
              size: 42,
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
                      fontSize: 18, color: Color.fromARGB(255, 207, 187, 0)),
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
