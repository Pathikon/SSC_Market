import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/info_login.dart';

class golds extends StatefulWidget {
  const golds({Key? key}) : super(key: key);

  @override
  State<golds> createState() => _goldsState();
}

class _goldsState extends State<golds> {
  final String idroom = "APL02";
  final String status = "ບໍ່ວ່າງ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ໂຂນຂາຍເຄື່ອງຂັບສິນມີຄ່າ"),
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
              color: Color(0xffFFE478),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                tital + " " + status,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
