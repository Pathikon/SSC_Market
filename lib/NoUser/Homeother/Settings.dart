// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ການຕັ້ງຄ່າ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        child: Container(
          height: double.infinity,
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
                children: [
                  Divider(),
                  ProfileMenu(
                    icon: Image.asset(
                      "assets/icons/laos.png",
                      width: 45,
                      height: 45,
                    ),
                    text: "ພາສາ",
                    press: () {
                      showphasa(context);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showphasa(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              titlePadding: EdgeInsets.all(0),
              title: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                        
                    ),
                    color: Colors.green,),
                    padding: EdgeInsets.all(12),
                  
                    child: Row(
                      children: [
                        Container(
                            child: Text(
                          "ເລືອກພາສາ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                        SizedBox(
                          width: 120,
                        ),
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.cancel,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              content: Container(
                padding: EdgeInsets.all(0),
                height: 75,
                child: FlatButton(
                  onPressed: () {},
                  child: Column(children: [
                    Divider(),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            child: Image.asset(
                              "assets/icons/laos.png",
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            child: Text(
                              "ພາສາລາວ",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                  ]),
                ),
              ),
            ));
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String text;
  final icon;
  final press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: FlatButton(
        onPressed: press,
        child: Row(
          children: [
            SizedBox(
              child: Icon(
                Icons.language,
                color: Colors.black45,
                size: 30,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 150,
            ),
            Expanded(
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
