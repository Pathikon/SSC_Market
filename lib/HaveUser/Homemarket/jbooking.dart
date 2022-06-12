import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/Baibin_booking.dart';

class bookings extends StatefulWidget {
  const bookings({Key? key}) : super(key: key);

  @override
  State<bookings> createState() => _bookingsState();
}

class _bookingsState extends State<bookings> {
  var genderItem = [
    '7 ມື້',
    '14 ມື້',
    '1 ເດືອນ',
  ];
  var datetime = "250.000 ກີບ/7 ມື້";

  String dropdownvalue = "7 ມື້";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ຈອງຫ້ອງເຊົ່າ',
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
                  tital: "ຊື່ຜູ້ຈອງ",
                  keyid: "Pathikone PHOMMASAN",
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
                              "A1001",
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
                              "ເລືອກໄລຍະເວລາຈອງ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
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
                                  if (dropdownvalue == '7 ມື້') {
                                    setState(() {
                                      datetime = "250.000 ກີບ/7 ມື້";
                                    });
                                  } else if (dropdownvalue == '14 ມື້') {
                                    setState(() {
                                      datetime = "350.000 ກີບ/14 ມື້";
                                    });
                                  } else if (dropdownvalue == '1 ເດືອນ') {
                                    setState(() {
                                      datetime = "450.000 ກີບ/30 ມື້";
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
                          children: [
                            Container(
                              child: Text(
                                "ຄ່າມັດຈຳ",
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
                type: PageTransitionType.rightToLeft, child: baibin_booking()));
          },
          child: Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 49, 128, 51),),
            
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
