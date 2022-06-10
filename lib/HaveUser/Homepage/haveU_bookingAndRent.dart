import 'package:flutter/material.dart';

class u_bookingAndrent extends StatefulWidget {
  const u_bookingAndrent({Key? key}) : super(key: key);

  @override
  State<u_bookingAndrent> createState() => _u_bookingAndrentState();
}

class _u_bookingAndrentState extends State<u_bookingAndrent> {
  final String date = "12/12/2022";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ຂໍ້ມູນການ ເຊົ່າ ແລະ ຈອງ ຫ້ອງຂອງທ່ານ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            list_data(
              tital: "ການຈອງ",
              infomation: "gfhtg",
              dates: "12/12/2022",
              times: "12:00",
            ),
          ],
        ),
      ),
    );
  }
}

class list_data extends StatelessWidget {
  final String tital;
  final String times;
  final String dates;
  final String infomation;

  const list_data({
    Key? key,
    required this.tital,
    required this.infomation,
    required this.dates,
    required this.times,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                "     " + tital + "          " + times + "  ." + dates,
                style: TextStyle(color: Colors.white, fontSize: 19),
              )),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              infomation,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
