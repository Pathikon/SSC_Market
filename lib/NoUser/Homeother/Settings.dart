import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/Homeother/Condition.dart';

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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
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
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          titlePadding: EdgeInsets.all(0),
                          title: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                color: Colors.green,
                                child: Row(
                                  children: [
                                    Container(
                                        child: Text(
                                      "ເລືອກພາສາ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    )),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    SizedBox(
                                      child: InkWell(
                                        onTap: () {},
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
                            height: 150,
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
                        ));
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
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
