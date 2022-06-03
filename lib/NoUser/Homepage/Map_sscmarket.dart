import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class mapsscmarket extends StatefulWidget {
  const mapsscmarket({Key? key}) : super(key: key);

  @override
  State<mapsscmarket> createState() => _mapsscmarketState();
}

class _mapsscmarketState extends State<mapsscmarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ແຜນຜັງຮ້ານຄ້າ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}
