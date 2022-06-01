import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class booking extends StatefulWidget {
  const booking({Key? key}) : super(key: key);

  @override
  State<booking> createState() => _bookingState();
}

class Getid {
  var getidroom;
  Getid({this.getidroom});
}

class _bookingState extends State<booking> {
  final String idroom = "APL01";
  final String roomtyle = "ຫ້ອງເຊົ່າພະເພດເຄື່ອງນຸ່ງຮົ່ມ";
  final String lakharoom = "300.000";
  Getid getid = Getid();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ປ້ອນຂໍ້ມູນຂອງທ່ານ"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  height: 60,
                  width: 160,
                  color: Color(0xffEBEBEB),
                  child: Center(
                    child: Text(
                      "ລະຫັດຫ້ອງເຊົ່າ : " + idroom,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 180,
                  color: Color(0xffEBEBEB),
                  child: Center(
                    child: Text(
                      roomtyle + "ລາຄາ : " + lakharoom + " ກີບ/ເດືອນ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Text(""),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.green,
            height: 55,
            child: Row(
              children: [
                SizedBox(
                  width: 140,
                ),
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
