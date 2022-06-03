import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class condition extends StatefulWidget {
  const condition({Key? key}) : super(key: key);

  @override
  State<condition> createState() => _conditionState();
}

class _conditionState extends State<condition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ເງື່ອນໄຂ ແລະ ກົດລະບຽບຂອງຕະຫຼາດ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            datas(
              tital: "ຂໍ1 ນຮຫພເດີ້່ນຳຮພ້ິະເນຮຳພ້ະເນຮພ້",
              infomation:
                  "ພວກຂ້າພະເຈົ້າຂໍສະແດງຄວາມຮູ້ບຸນຄຸນ ແລະ ຂອບໃຈ ທ່ານ ປທ. ນາງ ມະນິດດາ ທະວົງຈິດ ທີ່ເປັນອາຈານທີ່ປຶກສາຂອງພວກນ້ອງ ເຊິ່ງໄດ້ສະຫຼະເວລາໃຫ້ຄຳແນະນຳ, ປະກອບຄຳຄິດຄຳເຫັນ ແລະ ຊ່ວຍເຫຼືອ ໃນການຂຽນບົດຄົ້ນຄ້ວາເຫຼັ້ມນີ້. ໃນຂະນະດຽວກັນ ພວກນ້ອງຂໍສະແດງຄວາມຂອບໃຈມາຍັງ ທ່ານ ປທ. ລັດຕະພົນໄຊຍະວົງ ທີ່ໄດ້ໃຫ້ຄຳຄິດຄຳເຫັນທາງດ້ານວິເຄາະລະບົບ ແລະ ວິທີການຂຽນບົດໂດຍລວມ.",
            ),
          ],
        ),
      ),
    );
  }
}

class datas extends StatelessWidget {
  final String tital;
  final String infomation;

  const datas({
    Key? key,
    required this.tital,
    required this.infomation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black12,
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  )),
              child: Center(
                  child: Text(
                tital,
                style: TextStyle(color: Colors.white, fontSize: 19),
              )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              infomation,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
