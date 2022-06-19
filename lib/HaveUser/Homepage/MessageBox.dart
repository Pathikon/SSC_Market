import 'package:flutter/material.dart';

class messagebox extends StatefulWidget {
  const messagebox({Key? key}) : super(key: key);

  @override
  State<messagebox> createState() => messageboxState();
}

class messageboxState extends State<messagebox> {
  final String date = "12/12/2022";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ກ່ອງຂໍ້ຄວາມ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => messagebox()));
              },
              icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: Container(
        color: Colors.green,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  sms(
                    tital: "ການຈອງຫ້ອງເຊົ່າ",
                    zone: "ໂຊນຂາຍເຄື່ອງນູ່ງຮົ່ມ",
                    room: "ຫ້ອງ: APL01",
                    datetime: "12/12/2022",
                  ),
                  Divider(
                    height: 2,
                  ),
                  sms(
                    tital: "ການເຊົ່າຫ້ອງເຊົ່າ",
                    zone: "ໂຊນຂາຍເຄື່ອງນູ່ງຮົ່ມ",
                    room: "ຫ້ອງ: APL02",
                    datetime: "11/08/2021",
                  ),
                  Divider(
                    height: 2,
                  ),
                  sms(
                    tital: "ການຈອງຫ້ອງເຊົ່າ",
                    zone: "ໂຊນຂາຍເຄື່ອງນູ່ງຮົ່ມ",
                    room: "ຫ້ອງ: APL05",
                    datetime: "23/09/2020",
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

class sms extends StatelessWidget {
  final String tital;
  final String zone;
  final String room;
  final String datetime;
  const sms({
    Key? key,
    required this.tital,
    required this.zone,
    required this.room,
    required this.datetime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 231, 255, 232),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/icons/email.png",
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            tital,
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            zone,
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Text(
                            room,
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  child: Text(
                    datetime,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
