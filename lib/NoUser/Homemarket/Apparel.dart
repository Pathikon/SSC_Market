import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/Api_Handler.dart';
import 'package:ssc_market/NoUser/info_login.dart';

class apparel extends StatefulWidget {
  const apparel({Key? key}) : super(key: key);

  @override
  State<apparel> createState() => _apparelState();
}

class _apparelState extends State<apparel> {
  final String idroom = "";
  ApiHandler apiHandler = ApiHandler();
  List output = [];
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ໂຂນຂາຍເຄື່ອງນຸ່ງຮົ່ມ"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SizedBox(
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        for (var i in output)
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffFFE478),
                              ),
                              child: Center(
                                child: Text(
                                  i["id_room"] + " " + i["status"],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadData() async {
    var response = await apiHandler.get("/user/list/rentalroom");
    setState(() {
      output = json.decode(response.body);
    });
  }
  
}
