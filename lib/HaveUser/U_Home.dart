import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homepage/haveU_bookingAndRent.dart';
import 'package:ssc_market/HaveUser/Homepage/profiles.dart';
import 'package:ssc_market/NoUser/Homepage/Map_sscmarket.dart';
import 'package:ssc_market/NoUser/Homepage/Staff.dart';
import 'package:ssc_market/NoUser/Homepage/about_bookingAndRental.dart';

class u_home extends StatefulWidget {
  const u_home({Key? key}) : super(key: key);

  @override
  State<u_home> createState() => _u_homeState();
}

class _u_homeState extends State<u_home> {
  var username = "ປາທິກອນ ພົມມະສານ";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .45,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () => SystemNavigator.pop,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 55,
                      child: Icon(
                        Icons.power_settings_new,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "ສະບາຍດີ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: profiles()));
                      },
                      child: Container(
                        height: 60,
                        width: 240,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(600),
                                  child: Image.asset(
                                    "assets/images/pelou.jpg",
                                    height: 50,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Text(
                                  username,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "ຕະຫຼາດສີແສງຈັນ ຍິນດີຕ້ອນຮັບ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .95,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      MenuCard(
                        pics: "assets/icons/map.png",
                        titals: "ແຜນຜັງຮ້ານຄ້າ",
                        oks: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: mapsscmarket()));
                        },
                      ),
                      MenuCard(
                        pics: "assets/icons/steward.png",
                        titals: "ຕິດຕໍ່ພະນັກງານ",
                        oks: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: staffall()));
                        },
                      ),
                      MenuCard(
                        pics: "assets/icons/booking.png",
                        titals: "ຂໍ້ມູນການເຊົ່າ & ຈອງ",
                        oks: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: u_bookingAndrent()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String pics;
  final String titals;
  final oks;
  const MenuCard({
    Key? key,
    required this.pics,
    required this.titals,
    required this.oks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: -23,
              blurRadius: 17,
              offset: Offset(1.0, 17.0))
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: oks,
          child: Column(children: <Widget>[
            Spacer(),
            Image.asset(
              pics,
              width: 100,
              height: 100,
            ),
            Spacer(),
            Text(
              titals,
              style: TextStyle(fontSize: 18),
            ),
            Spacer()
          ]),
        ),
      ),
    );
  }
}
