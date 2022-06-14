import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/U_AllMarket_Booking.dart';
import 'package:ssc_market/HaveUser/Homemarket/U_AllMarket_rental.dart';

class baibin_booking extends StatefulWidget {
  const baibin_booking({Key? key}) : super(key: key);

  @override
  State<baibin_booking> createState() => _baibin_bookingState();
}

class _baibin_bookingState extends State<baibin_booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(PageTransition(
                type: PageTransitionType.leftToRight,
                child: u_allmarket_booking()));
          },
          icon: Icon(Icons.cancel_rounded),
        ),
        elevation: 0,
        title: Text(
          'ໃບບິນການຈອງ',
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 610,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 140,
                        ),
                      ),
                      Container(
                        child: Text(
                          "ຕະຫຼາດ ແສນອຸດົມ (ຫຼັກ20)",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "ເລກໃບບິນທີ ",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text("0011",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "ວັນທີ ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Container(
                                child: Text("12/12/2022",
                                    style: TextStyle(color: Colors.grey)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "ເວລາ ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Container(
                                child: Text("12:12:59",
                                    style: TextStyle(color: Colors.grey)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "ຊື່ຜູ້ເຊົ່າ : ",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text("ປາທິກອນ ພົມມະສານ",
                                style: TextStyle(color: Colors.green)),
                          ),
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "ລາຍການຫ້ອງ",
                            ),
                          ),
                          Container(
                            child: Text("ໄລຍະເວລາ"),
                          ),
                          Container(
                            child: Text("ຄ່າມັດຈຳ/ກີບ"),
                          ),
                        ],
                      ),
                      Divider(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: Text("ໂຊນເຄື່ອງນຸ່ງຮົ່ມAPL01",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Container(
                            child: Text("7 ວັນ",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Container(
                            child: Text("250.000",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Divider(
                        height: 5,
                      ),
                      Container(
                        child: Text(
                          "ໃບບິນນີ້ສາມາດນຳໃຊ້ຮອດ 12/12/2022",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        child: Text(
                          "( ຖ້າຫາກວ່າທ່ານບໍ່ມາກ່ອນກຳນົດ ການຈອງຂອງທ່ານຈະຖືກສະຫຼະສິດ )",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 122, 113, 27)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "ຈຳນວນການຊຳລະທັງໝົດ",
                            ),
                          ),
                          Container(
                            child: Text("250.000" + " ກີບ"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text("ອອກບິນໂດຍ : ",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Container(
                            child: Text("ວິເສດ ຄຳສຸກຖາວົງ",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text("ເບີໂທຕະຫຼາດ : ",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Container(
                            child: Text("20 93039850",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          "ຕະຫຼາດ ແສນອຸດົມ (ຫຼັກ20)",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        child: Text("ຂໍຂອບໃຈທີ່ໃຊ້ບໍລິການ"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red),
                  child: Text(
                    "ຍົກເລີກການຈອງ",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
