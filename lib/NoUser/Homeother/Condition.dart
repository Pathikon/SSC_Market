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
    );
  }
}
