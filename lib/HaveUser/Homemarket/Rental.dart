import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/Baibin_booking.dart';
import 'package:intl/intl.dart';
import 'package:ssc_market/HaveUser/Homemarket/Baibin_rental.dart';

class rentals extends StatefulWidget {
  const rentals({Key? key}) : super(key: key);

  @override
  State<rentals> createState() => _rentalsState();
}

class _rentalsState extends State<rentals> {
  var genderItem = [
    '1 ເດືອນ',
    '3 ເດືອນ',
    '6 ເດືອນ',
    '9 ເດືອນ',
    '1 ປີ',
    '3 ປີ',
    '5 ປີ',
  ];
  var datetime = "500.000 ກີບ/ເດືອນ";
  var perzen = "";

  String dropdownvalue = "1 ເດືອນ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ເຊົ່າຫ້ອງ',
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                boxtxt(
                  tital: "ຊື່ຜູ້ເຊົ່າ",
                  keyid: "ປາທິກອນ ພົມມະສານ",
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 255, 247, 175),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Container(
                                child: Text(
                              "ລະຫັດຫ້ອງ ",
                              style: TextStyle(fontSize: 18),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                child: Text(
                              "APL01",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.green),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "ເລືອກໄລຍະເວລາເຊົ່າ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: DropdownButton<String>(
                              itemHeight: 60,
                              isExpanded: true,
                              value: dropdownvalue,
                              items: genderItem.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        items,
                                        style: TextStyle(fontSize: 18),
                                      )),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                  if (dropdownvalue == '1 ເດືອນ') {
                                    setState(() {
                                      datetime = "500.000 ກີບ/ເດືອນ";
                                      perzen = "";
                                    });
                                  } else if (dropdownvalue == '3 ເດືອນ') {
                                    setState(() {
                                      var data = ((500 * 3) / 100) * 5;
                                      var all = (500 * 3) - data;
                                      datetime = NumberFormat.currency(
                                                  locale: 'id',
                                                  symbol: '',
                                                  decimalDigits: 0)
                                              .format(all)
                                              .toString() +
                                          ".000 ກີບ";
                                      perzen = "ຫຼຸດ 5%";
                                    });
                                  } else if (dropdownvalue == '6 ເດືອນ') {
                                    setState(() {
                                      var data = ((500 * 6) / 100) * 10;
                                      var all = (500 * 6) - data;
                                      datetime = NumberFormat.currency(
                                                  locale: 'id',
                                                  symbol: '',
                                                  decimalDigits: 0)
                                              .format(all)
                                              .toString() +
                                          ".000 ກີບ";
                                      perzen = "ຫຼຸດ 10%";
                                    });
                                  } else if (dropdownvalue == '9 ເດືອນ') {
                                    setState(() {
                                      var data = ((500 * 9) / 100) * 15;
                                      var all = (500 * 9) - data;
                                      datetime = NumberFormat.currency(
                                                  locale: 'id',
                                                  symbol: '',
                                                  decimalDigits: 0)
                                              .format(all)
                                              .toString() +
                                          ".000 ກີບ";
                                      perzen = "ຫຼຸດ 15%";
                                    });
                                  } else if (dropdownvalue == '1 ປີ') {
                                    setState(() {
                                      var data = ((500 * 12) / 100) * 20;
                                      var all = (500 * 12) - data;
                                      datetime = NumberFormat.currency(
                                                  locale: 'id',
                                                  symbol: '',
                                                  decimalDigits: 0)
                                              .format(all)
                                              .toString() +
                                          ".000 ກີບ";
                                      perzen = "ຫຼຸດ 20%";
                                    });
                                  } else if (dropdownvalue == '3 ປີ') {
                                    setState(() {
                                      var data = ((500 * 36) / 100) * 25;
                                      var all = (500 * 36) - data;
                                      datetime = NumberFormat.currency(
                                                  locale: 'id',
                                                  symbol: '',
                                                  decimalDigits: 0)
                                              .format(all)
                                              .toString() +
                                          ".000 ກີບ";
                                      perzen = "ຫຼຸດ 25%";
                                    });
                                  } else if (dropdownvalue == '5 ປີ') {
                                    setState(() {
                                      var data = ((500 * 60) / 100) * 30;
                                      var all = (500 * 60) - data;
                                      datetime = NumberFormat.currency(
                                                  locale: 'id',
                                                  symbol: '',
                                                  decimalDigits: 0)
                                              .format(all)
                                              .toString() +
                                          ".000 ກີບ";
                                      perzen = "ຫຼຸດ 30%";
                                    });
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "ລາຄາຫ້ອງ",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text(
                                datetime,
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                              ),
                            ),
                            Container(
                              child: Text(
                                perzen,
                                style:
                                    TextStyle(color: Colors.red, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 255, 247, 175),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "ການຊຳລະເງີນ",
                          style: TextStyle(color: Colors.green, fontSize: 22),
                        ),
                      ),
                      Container(
                        child: Text("( ທ່ານສາມາດຊຳລະໄດ້ໂດຍໂອນຜ່ານ OnePlay )"),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/qrcode.jpeg",
                          width: 250,
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "ຫຼັງຈາກທີ່ທ່ານຊຳລະສຳເລັດແລ້ວ ໃຫ້ທ່ານແຄັບຫຼັກຖານການໂອນແລ້ວ ອັບລົງໃນຊ່ອງດ້ານລຸ່ມນີ້",
                          style: TextStyle(fontSize: 18, color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        color: Colors.black12,
                        width: 250,
                        height: 190,
                        child: Image.asset("assets/images/addimg.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(PageTransition(
                type: PageTransitionType.rightToLeft, child: baibin_rental()));
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 128, 51),
            ),
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "ດຳເນີນການຕໍ່",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class boxtxt extends StatelessWidget {
  final String tital;
  final keyid;
  const boxtxt({
    Key? key,
    required this.tital,
    this.keyid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Color.fromARGB(255, 255, 247, 175),
      ),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              tital,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            child: Text(
              keyid,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
