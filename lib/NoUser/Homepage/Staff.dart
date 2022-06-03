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
    );
  }
}
