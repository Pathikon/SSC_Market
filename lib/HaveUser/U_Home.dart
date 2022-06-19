import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/U_AllMarket_Booking.dart';
import 'package:ssc_market/HaveUser/Homemarket/U_AllMarket_rental.dart';
import 'package:ssc_market/HaveUser/Homepage/MessageBox.dart';
import 'package:ssc_market/HaveUser/Homepage/profiles.dart';
import 'package:ssc_market/NoUser/Homepage/Staff.dart';

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
                  onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      title: Text(
                        'ທ່ານຕ້ອງການອອກຈາກແອັບບໍ່?',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
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
                                onPressed: () => Navigator.of(context).pop(),
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
                                onPressed: () => SystemNavigator.pop(),
                                child: const Text('ອອກ',
                                    style: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 55,
                      child: Icon(
                        Icons.power_settings_new,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        height: 50,
                        width: 185,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(99, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/icons/user.png",
                                    height: 10,
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
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                  ),
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
                        titals: "ເຊົ່າຮ້ານຄ້າ",
                        oks: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: u_allmarket()));
                        },
                      ),
                      MenuCard(
                        pics: "assets/icons/bookingn.png",
                        titals: "ຈອງຮ້ານຄ້າ",
                        oks: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: u_allmarket_booking()));
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
                        pics: "assets/icons/message.png",
                        titals: "ກ່ອງຂໍ້ຄວາມ",
                        oks: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: messagebox()));
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
