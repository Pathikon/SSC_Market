import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:intl/intl.dart';

class tor_vela extends StatefulWidget {
  const tor_vela({Key? key}) : super(key: key);

  @override
  State<tor_vela> createState() => _tor_velaState();
}

class _tor_velaState extends State<tor_vela> {
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
  var velaLuea = 356;
  var duean = null;
  var Newday = null;

  String dropdownvalue = "1 ເດືອນ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ຕໍ່ອາຍຸການໃຊ້ງານ',
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 247, 175),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ລະຫັດຫ້ອງ : ",
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                        Text("APL01",
                            style: TextStyle(color: Colors.grey, fontSize: 16))
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 170,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 247, 175),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ເວລາທີ່ຍັງເຫຼືອ : ",
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                        Text(velaLuea.toString(),
                            style: TextStyle(color: Colors.grey, fontSize: 17)),
                        Text(" ມື້",
                            style: TextStyle(color: Colors.green, fontSize: 16))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      child: Text(
                        "ເລືອກໄລຍະເວລາການເຊົ່າເພີ່ມ ",
                        style: TextStyle(color: Colors.green, fontSize: 17),
                      ),
                    ),
                    muejrng(),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
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
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        datetime,
                        style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Text(
                        perzen,
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "ຕໍ່ເວລາທັງໝົດ + ເວລາເກົ່າ ",
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        Newday.toString(),
                        style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Text(
                        " ວັນ ",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {},
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

  Container muejrng() {
    return Container(
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 255, 247, 175)),
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
                duean = 30;
                Newday = velaLuea + duean;
              });
            } else if (dropdownvalue == '3 ເດືອນ') {
              setState(() {
                var data = ((500 * 3) / 100) * 5;
                var all = (500 * 3) - data;
                datetime = NumberFormat.currency(
                            locale: 'id', symbol: '', decimalDigits: 0)
                        .format(all)
                        .toString() +
                    ".000 ກີບ";
                perzen = "ຫຼຸດ 5%";
                duean = 30 * 3;
                Newday = velaLuea + duean;
              });
            } else if (dropdownvalue == '6 ເດືອນ') {
              setState(() {
                var data = ((500 * 6) / 100) * 10;
                var all = (500 * 6) - data;
                datetime = NumberFormat.currency(
                            locale: 'id', symbol: '', decimalDigits: 0)
                        .format(all)
                        .toString() +
                    ".000 ກີບ";
                perzen = "ຫຼຸດ 10%";
                duean = 30 * 6;
                Newday = velaLuea + duean;
              });
            } else if (dropdownvalue == '9 ເດືອນ') {
              setState(() {
                var data = ((500 * 9) / 100) * 15;
                var all = (500 * 9) - data;
                datetime = NumberFormat.currency(
                            locale: 'id', symbol: '', decimalDigits: 0)
                        .format(all)
                        .toString() +
                    ".000 ກີບ";
                perzen = "ຫຼຸດ 15%";
                duean = 30 * 9;
                Newday = velaLuea + duean;
              });
            } else if (dropdownvalue == '1 ປີ') {
              setState(() {
                var data = ((500 * 12) / 100) * 20;
                var all = (500 * 12) - data;
                datetime = NumberFormat.currency(
                            locale: 'id', symbol: '', decimalDigits: 0)
                        .format(all)
                        .toString() +
                    ".000 ກີບ";
                perzen = "ຫຼຸດ 20%";
                duean = 30 * 12;
                Newday = velaLuea + duean;
              });
            } else if (dropdownvalue == '3 ປີ') {
              setState(() {
                var data = ((500 * 36) / 100) * 25;
                var all = (500 * 36) - data;
                datetime = NumberFormat.currency(
                            locale: 'id', symbol: '', decimalDigits: 0)
                        .format(all)
                        .toString() +
                    ".000 ກີບ";
                perzen = "ຫຼຸດ 25%";
                duean = 30 * 36;
                Newday = velaLuea + duean;
              });
            } else if (dropdownvalue == '5 ປີ') {
              setState(() {
                var data = ((500 * 60) / 100) * 30;
                var all = (500 * 60) - data;
                datetime = NumberFormat.currency(
                            locale: 'id', symbol: '', decimalDigits: 0)
                        .format(all)
                        .toString() +
                    ".000 ກີບ";
                perzen = "ຫຼຸດ 30%";
                duean = 30 * 60;
                Newday = velaLuea + duean;
              });
            }
          });
        },
      ),
    );
  }
}
