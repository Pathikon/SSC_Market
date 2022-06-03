import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class aboutappAndcreator extends StatefulWidget {
  const aboutappAndcreator({Key? key}) : super(key: key);

  @override
  State<aboutappAndcreator> createState() => _aboutappAndcreatorState();
}

class _aboutappAndcreatorState extends State<aboutappAndcreator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ແອັບພິເຄຊັ່ນ ແລະ ຜູ້ພັດທະນາ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  child: Text(
                    "ພວກຂ້າພະເຈົ້າຂໍສະແດງຄວາມຮູ້ບຸນຄຸນ ແລະ ຂອບໃຈ ທ່ານ ປທ. ນາງ ມະນິດດາ ທະວົງຈິດ ທີ່ເປັນອາຈານທີ່ປຶກສາຂອງພວກນ້ອງ ເຊິ່ງໄດ້ສະຫຼະເວລາໃຫ້ຄຳແນະນຳ, ປະກອບຄຳຄິດຄຳເຫັນ ແລະ ຊ່ວຍເຫຼືອ ໃນການຂຽນບົດຄົ້ນຄ້ວາເຫຼັ້ມນີ້. ໃນຂະນະດຽວກັນ ພວກນ້ອງຂໍສະແດງຄວາມຂອບໃຈມາຍັງ ທ່ານ ປທ. ລັດຕະພົນໄຊຍະວົງ ທີ່ໄດ້ໃຫ້ຄຳຄິດຄຳເຫັນທາງດ້ານວິເຄາະລະບົບ ແລະ ວິທີການຂຽນບົດໂດຍລວມ.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "ຜູ້ພັດທະນາ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        child: Image.asset(""),
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
