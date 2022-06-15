import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/Baibin_booking.dart';
import 'package:ssc_market/HaveUser/Homemarket/Rental.dart';
import 'package:ssc_market/HaveUser/Homemarket/jbooking.dart';
import 'package:ssc_market/HaveUser/Homemarket/processing.dart';
import 'package:ssc_market/NoUser/info_login.dart';

class u_apparel_bk extends StatefulWidget {
  const u_apparel_bk({Key? key}) : super(key: key);

  @override
  State<u_apparel_bk> createState() => _u_apparel_bkState();
}

class _u_apparel_bkState extends State<u_apparel_bk> {
  final String idroom = "APL01";
  final String status = "ວ່າງ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("ໂຂນຂາຍເຄື່ອງນຸ່ງຮົ່ມ"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Container(
          child: SizedBox(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        child: GridView.count(
                          crossAxisCount: 4,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: <Widget>[
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: bookings()));
                              },
                            ),
                            cardk1(
                              tital: "APL02",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: baibin_booking()));
                              },
                            ),
                            cardk1(
                              tital: "APL03",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL04",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL05",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL06",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL07",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL08",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL09",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL10",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL11",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: "APL12",
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
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

class cardk1 extends StatelessWidget {
  final String tital;
  final ontap;
  final String status;
  const cardk1({
    Key? key,
    required this.tital,
    required this.ontap,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: InkWell(
          onTap: ontap,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFFE478),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    tital,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 77, 77, 77),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    status,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
