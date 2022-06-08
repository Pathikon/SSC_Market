import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/About.dart';

class registers extends StatefulWidget {
  const registers({Key? key}) : super(key: key);

  @override
  State<registers> createState() => _registersState();
}

class _registersState extends State<registers> {
  final formkey = GlobalKey<FormState>();
  String dropdownvalue = "ນະຄອນຫຼວງວຽງຈັນ";
  String dropdownvalue2 = "ເມືອງຈັນທະບູລ";
  String dropdowngender = "ຊາຍ";
  var provinceItem = [
    'ນະຄອນຫຼວງວຽງຈັນ',
  ];
  var genderItem = [
    'ຊາຍ',
    'ຍິງ',
    'ອື່ນໆ',
  ];
  var distirceyItem = [
    'ເມືອງຈັນທະບູລ',
    'ເມືອງສີໂຄດຕະບອງ',
    'ເມືອງໄຊເສດຖາ',
    'ເມືອງສີສັດຕະນາກ',
    'ເມືອງນາຊາຍທອງ',
    'ເມືອງໄຊທານີ',
    'ເມືອງຫາດຊາຍຟອງ',
    'ເມືອງສັງທອງ',
    'ເມືອງປາກງື່ມ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "ສ້າງບັນຊີຜູ້ໃຊ້",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(PageTransition(
                    child: Abouts(), type: PageTransitionType.rightToLeft));
              },
              icon: Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Form(
          key: formkey,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  child: Text(
                    "ສ້າງບັນຊີຜູ້ໃຊ້ຂອງທ່ານ",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                  ]),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.person),
                      hintText: "ຊື່ຜູ້ໃຊ້"),
                  onSaved: (User_email) {},
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                  ]),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.person),
                      hintText: "ນາມສະກຸນ"),
                  onSaved: (User_email) {},
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Text(
                    "ເລືອກເພດ",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Text(
                        "ເພດ",
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 250,
                      child: DropdownButton<String>(
                        itemHeight: 60,
                        isExpanded: true,
                        focusColor: Colors.white,
                        value: dropdowngender,
                        items: genderItem.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue3) {
                          setState(() {
                            dropdowngender = newValue3!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Text(
                    "ທີ່ຢູ່ຂອງທ່ານປັດຈຸບັນ",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Text(
                        "ແຂວງ",
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 250,
                      child: DropdownButton<String>(
                        itemHeight: 60,
                        isExpanded: true,
                        focusColor: Colors.white,
                        value: dropdownvalue,
                        items: provinceItem.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Text(
                        "ເມືອງ",
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 250,
                      child: DropdownButton<String>(
                        itemHeight: 60,
                        isExpanded: true,
                        focusColor: Colors.white,
                        value: dropdownvalue2,
                        items: distirceyItem.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue2) {
                          setState(() {
                            dropdownvalue2 = newValue2!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(
                          errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                    ]),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        icon: Text("ບ້ານ",
                            style:
                                TextStyle(fontSize: 18, color: Colors.green)),
                        hintText: "ບ້ານທີ່ທ່ານຢູ່ປັດຈຸບັນ"),
                    onSaved: (User_email) {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: ((value) {
                    if (value!.isNotEmpty && value.length < 8) {
                      return 'ກະລຸນາປ້ອນເບີໂທລະສັບຂອງທ່ານໃຫ້ຄົບ 8 ຕົວເລກ';
                    } else if (value.length > 8 && value.isNotEmpty) {
                      return 'ກະລຸນາປ້ອນເບີໂທລະສັບຂອງທ່ານຫ້າມກາຍ 8 ຕົວເລກ';
                    } else if (value == null || value.isEmpty) {
                      return 'ກະລຸນາປ້ອນເບີໂທ';
                    }

                    return null;
                  }),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Text(
                          '+856 20 | ',
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.phone),
                      hintText: "ເບີໂທລະສັບຂອງທ່ານ"),
                  onSaved: (Uphone) {},
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                  ]),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.key),
                      hintText: "ສ້າງລະຫັດຜ່ານ"),
                  onSaved: (User_email) {},
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                  ]),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.password),
                      hintText: "ຢືນຢັນລະຫັດຜ່ານ"),
                  onSaved: (User_email) {},
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      formkey.currentState!.validate();
                    },
                    label: Icon(Icons.insert_chart),
                    icon: Text(
                      "ລົງທະບຽນ",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
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
