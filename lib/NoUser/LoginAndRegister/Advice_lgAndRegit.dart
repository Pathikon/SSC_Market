import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class advice_lg_regit extends StatefulWidget {
  const advice_lg_regit({Key? key}) : super(key: key);

  @override
  State<advice_lg_regit> createState() => _advice_lg_regitState();
}

class _advice_lg_regitState extends State<advice_lg_regit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ການເຂົ້າສູ່ລະບົບ ແລະ ການລົງທຽນ',
        ),
        centerTitle: true,
      ),
      body: Container(
          color: Colors.green,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Color.fromARGB(255, 230, 230, 230)),
            child: SingleChildScrollView(
                child: Container(
              child: Column(
                children: [
                  litlaiykarn(
                    tital: "ການເຂົ້າສູ່ລະບົບ",
                    textdata: "າ່້ເນຳພະ້່ຍຳວະພນ້່ຍວະຳພ້ນ່ຍວະພຳ້ນສ່ພຍະ້ສງວກ້່",
                  ),
                  litlaiykarn(
                    tital: "ການລົງທະບຽນ",
                    textdata: "າ່້ເນຳພະ້່ຍຳວະພນ້່ຍວະຳພ້ນ່ຍວະພຳ້ນສ່ພຍະ້ສງວກ້່",
                  ),
                ],
              ),
            )),
          )),
    );
  }
}

class litlaiykarn extends StatelessWidget {
  final String tital;
  final String textdata;
  const litlaiykarn({
    Key? key,
    required this.tital,
    required this.textdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Text(
                tital,
                style: TextStyle(fontSize: 19, color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Text(
                textdata,
                style: TextStyle(color: Color.fromARGB(255, 71, 71, 71)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
