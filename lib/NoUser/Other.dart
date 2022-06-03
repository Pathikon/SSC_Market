import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/Homeother/Condition.dart';
import 'package:ssc_market/NoUser/Homeother/Settings.dart';
import 'package:ssc_market/NoUser/Homeother/aboutAppAndcreator.dart';
import 'package:ssc_market/NoUser/Homepage/Staff.dart';
import 'package:ssc_market/NoUser/info_login.dart';

class other extends StatefulWidget {
  const other({Key? key}) : super(key: key);

  @override
  State<other> createState() => _otherState();
}

class _otherState extends State<other> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              'ບໍລິການອື່ນໆ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.other_houses,
                size: 1,
                color: Colors.green,
              ),
              onPressed: () {},
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/icons/logo.png',
                  height: 120,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 20,
                ),
                ProfileMenu(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black45,
                    size: 30,
                  ),
                  text: Text(
                    "   ຈັດການບັນຊີຂອງຂ້ອຍ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                  press: () {
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: infologin()));
                  },
                ),
                Divider(),
                ProfileMenu(
                  icon: Icon(
                    Icons.description_outlined,
                    color: Colors.black45,
                    size: 30,
                  ),
                  text: Text(
                    "   ເງື່ອນໄຂ ແລະ ຂໍ້ກຳນົດ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                  press: () {
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: condition()));
                  },
                ),
                Divider(),
                ProfileMenu(
                  icon: Icon(
                    Icons.phone_android,
                    color: Colors.black45,
                    size: 30,
                  ),
                  text: Text(
                    "   ຂໍ້ມູນຕິດຕໍ່່ & ສອບຖາມພະນັກງານ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                  press: () {
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: staffall()));
                  },
                ),
                Divider(),
                ProfileMenu(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black45,
                    size: 30,
                  ),
                  text: Text(
                    "   ການຕັ້ງຄ່າ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                  press: () {
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: settings()));
                  },
                ),
                Divider(),
                ProfileMenu(
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.black45,
                    size: 30,
                  ),
                  text: Text(
                    "   ກ່ຽວກັບແອັບພິເຄຊັ່ນ ແລະ ຜູ້ພັດທະນາ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                  press: () {
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: aboutappAndcreator()));
                  },
                ),
              ],
            ),
          )),
      onWillPop: () async {
        return false;
      },
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final text, icon;
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
              icon,
              SizedBox(
                height: 60,
              ),
              Expanded(child: text),
            ],
          )),
    );
  }
}
