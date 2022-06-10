import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class bookings extends StatefulWidget {
  const bookings({Key? key}) : super(key: key);

  @override
  State<bookings> createState() => _bookingsState();
}

class _bookingsState extends State<bookings> {
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
                            style: TextStyle(fontSize: 22, color: Colors.green),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.green,
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
