import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class staffall extends StatefulWidget {
  const staffall({Key? key}) : super(key: key);

  @override
  State<staffall> createState() => _staffallState();
}

class _staffallState extends State<staffall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ພະນັກງານຈັດສັນຕະຫຼາດທັງໝົດ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            stewards(
              pic: "assets/icons/steward.png",
              name: "ທ້າວ ປາທິກອນ ພົມມະສານ",
              position: "ຕຳແໜ່ງ ພະນັກງານຈັດສັນ",
              tel: "+85620 97625343",
            ),
            SizedBox(
              height: 15,
            ),
            stewards(
              pic: "assets/icons/steward.png",
              name: "ທ້າວ ວິເສດ ຄຳສຸກຖາວົງ",
              position: "ຕຳແໜ່ງ ພະນັກງານຈັດສັນ",
              tel: "+85620 93039850",
            ),
            SizedBox(
              height: 15,
            ),
            stewards(
              pic: "assets/icons/steward.png",
              name: "ທ້າວ ຈີລະຍຸ ວົງສິລິ",
              position: "ຕຳແໜ່ງ ພະນັກງານຈັດສັນ",
              tel: "+85620 96218527",
            ),
          ],
        ),
      ),
    );
  }
}

class stewards extends StatelessWidget {
  final pic;
  final String name;
  final String position;
  final String tel;
  const stewards({
    Key? key,
    this.pic,
    required this.name,
    required this.position,
    required this.tel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.green),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Image.asset(
              pic,
            ),
          ),
          Container(
            height: 100,
            width: 200,
            child: Column(
              children: [
                SizedBox(
                  child: Text(
                    name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(
                  child: Text(
                    position,
                    style: TextStyle(
                        color: Color.fromARGB(255, 212, 212, 212),
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  child: Text(
                    tel,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
