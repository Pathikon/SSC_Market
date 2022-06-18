import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homemarket/processing.dart';

class edit_data_accout_st extends StatefulWidget {
  const edit_data_accout_st({Key? key}) : super(key: key);

  @override
  State<edit_data_accout_st> createState() => _edit_data_accout_stState();
}

class _edit_data_accout_stState extends State<edit_data_accout_st> {
  final formkey = GlobalKey<FormState>();
  var name = "ປາທິກອນ";
  var suename = "ພົມມະສານ";
  var namestore = "ຮ້ານຂາຍເສື້ອຜ້າ ເປລູ່";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ແກ້ໄຂຂໍ້ມູນຜູ້ໃຊ້',
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
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    initialValue: name,
                    validator: MultiValidator([
                      RequiredValidator(
                          errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                    ]),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text("ຊື່"),
                        icon: Icon(Icons.person),
                        hintText: "ຊື່ຜູ້ໃຊ້"),
                    onSaved: (User_email) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    initialValue: suename,
                    validator: MultiValidator([
                      RequiredValidator(
                          errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                    ]),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text("ນາມສະກຸນ"),
                        icon: Icon(Icons.person),
                        hintText: "ຊື່ຜູ້ໃຊ້"),
                    onSaved: (User_email) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 128, 51),
            ),
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "ບັນທຶກຂໍ້ມູນ",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
