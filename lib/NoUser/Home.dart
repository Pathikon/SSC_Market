import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/U_BottomBar.dart';
import 'package:ssc_market/NoUser/Homemarket/AllMarket.dart';
import 'package:ssc_market/NoUser/Homepage/Staff.dart';
import 'package:ssc_market/NoUser/Homepage/about_bookingAndRental.dart';
import 'package:ssc_market/splash.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                Container(
                  child: InkWell(
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
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Text(
                  "ສະບາຍດີ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "ຕະຫຼາດແສນອຸດົມ (ຫຼັກ20) ຍິນດີຕ້ອນຮັບ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
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
                        pics: "assets/icons/shops.png",
                        titals: "ແຜນຜັງຮ້ານຄ້າ",
                        oks: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: allmarket()));
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
                              child: splashs()));
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
              width: 95,
              height: 95,
            ),
            Spacer(),
            Text(
              titals,
              style: TextStyle(fontSize: 17),
            ),
            Spacer()
          ]),
        ),
      ),
    );
  }
}
