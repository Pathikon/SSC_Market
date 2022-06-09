import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class rentals extends StatefulWidget {
  const rentals({Key? key}) : super(key: key);

  @override
  State<rentals> createState() => _rentalsState();
}

class _rentalsState extends State<rentals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ເຊົ່າຫ້ອງເຊົ່າ',
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
                tital: "ຊື່ຜູ້ເຊົ່າ",
                keyid: "Pathikone PHOMMASAN",
              ),
              boxtxt(
                tital: "ຊື່ຜູ້ເຊົ່າ",
                keyid: "Pathikone PHOMMASAN",
              )
            ],
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
        color: Color.fromARGB(255, 207, 255, 208),
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
