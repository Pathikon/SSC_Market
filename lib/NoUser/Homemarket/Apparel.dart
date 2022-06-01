import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/BkingAndHire.dart';

class apparel extends StatefulWidget {
  const apparel({Key? key}) : super(key: key);

  @override
  State<apparel> createState() => _apparelState();
}

class _apparelState extends State<apparel> {
  final String idroom = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ໂຂນຂາຍເຄື່ອງນຸ່ງຮົ່ມ"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SizedBox(
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
                          tital: "APL01",
                          status: "ບໍ່ວ່າງ",
                          ontap: () {
                            Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: bkanehire()));
                            setState(() {
                              String idroom = "APL01";
                            });
                          },
                        ),
                        cardk1(
                          tital: "APL02",
                          ontap: () {},
                          status: "ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL03",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL04",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL05",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL06",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL07",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL08",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL09",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL10",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL11",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
                        ),
                        cardk1(
                          tital: "APL12",
                          ontap: () {},
                          status: "ບໍ່ວ່າງ",
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
