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
    );
  }
}
