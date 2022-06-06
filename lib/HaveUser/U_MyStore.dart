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
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () => exit(0),
                        child: const Text('ຕົກລົງ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(' ກັບຄືນ ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      )
                    ],
                    title: const Text(
                      'ອອກຈາກລະບົບ',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    contentPadding: const EdgeInsets.all(15.0),
                    content: const Text(
                      ' ທ່ານຕ້ອງການອອກລະບົບແທ້ ຫຼື ບໍ່.?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                );
              },
              icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Container(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Divider(),
                SizedBox(
                  child: GestureDetector(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset(
                        'assets/icons/market.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        actions: [
                          Center(
                            child: ElevatedButton.icon(
                              icon: Icon(Icons.edit),
                              label: Text(
                                "ປ່ຽນຮູບໂປຣຟາຍ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Center(
                            child: ElevatedButton.icon(
                              icon: Icon(Icons.person),
                              label: Text(
                                "ເບີ່ງຮູບໂປຣຟາຍ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('ຍົກເລີກ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "ຮ້ານ ປ້າແສງຈັນ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "ຂາຍເຄື່ອງຍ່ອຍທົ່ວໄປ",
                  style: TextStyle(fontSize: 15, color: Colors.black45),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 150,
                      child: Column(children: [
                        Icon(Icons.access_time, color: Colors.black54),
                        Text(
                          'ມື້ເຊົ່າຂອງທ່ານ',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Divider(),
                        Text(
                          '365',
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ),
                        Divider(),
                        Text(
                          'ວັນ',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 150,
                      child: Column(children: [
                        Icon(Icons.store, color: Colors.black54),
                        Text(
                          'ສະຖານະ',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Divider(),
                        Icon(
                          Icons.add_task,
                          color: Colors.green,
                          size: 20,
                        ),
                        Divider(),
                        Text(
                          'ຈ່າຍແລ້ວ',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ]),
                    ),
                    VerticalDivider(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 180,
                      child: Column(children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.black54,
                        ),
                        Text(
                          'ວັນເດືອນປີເຊົ່າ',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          'ມື້ເຊົ່າ',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          '12/12/2022',
                          style: TextStyle(fontSize: 15, color: Colors.green),
                        ),
                        Divider(),
                        Text(
                          'ໝົດອາຍຸ',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          '12/12/2023',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        ),
                      ]),
                    ),
                  ],
                ),
                Divider(),
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

class Pf extends StatelessWidget {
  const Pf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ຮູບໂປຣຟາຍ')),
      body: Center(
        child: Hero(
          tag: 'Profile',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/icons/market.png',
              height: 500,
              width: 500,
            ),
          ),
        ),
      ),
    );
  }
}
