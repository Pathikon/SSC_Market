import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/info_login.dart';

class u_meat extends StatefulWidget {
  const u_meat({Key? key}) : super(key: key);

  @override
  State<u_meat> createState() => _u_meatState();
}

class _u_meatState extends State<u_meat> {
  final String idroom = "APL02";
  final String status = "ບໍ່ວ່າງ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ໂຊນຂາຍເຄື່ອງຂອງສົດ"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SizedBox(
        child: Stack(
          children: <Widget>[
            Container(
              width: 320,
              height: 350,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Container(
                      child: Center(
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: <Widget>[
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: idroom,
                              status: status,
                              ontap: () {
                                Navigator.of(context).push(PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: infologin()));
                              },
                            ),
                            cardk1(
                              tital: idroom,
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
              ),
            ),
          ],
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
              color: Color(0xffFF8161),
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
