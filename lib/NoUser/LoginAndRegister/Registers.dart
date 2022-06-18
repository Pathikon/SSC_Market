// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/Homeother/aboutAppAndcreator.dart';
import 'package:ssc_market/NoUser/About.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/Advice_lgAndRegit.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/Bottombar_lg.dart';

class registers extends StatefulWidget {
  const registers({Key? key}) : super(key: key);

  @override
  State<registers> createState() => _registersState();
}

class _registersState extends State<registers> {
  XFile? _image;
  late String urlImag;
  late var imagepath;

  ImagePicker? picker = ImagePicker();
  Future getimagePic() async {
    final XFile? pickedFile = await picker!.pickImage(
      source: ImageSource.gallery,
      maxWidth: 2000,
      maxHeight: 2000,
    );
    setState(() {
      _image = pickedFile!;
      imagepath = _image!.path;
    });
  }

  Future getimageCam() async {
    final XFile? pickedFile = await picker!.pickImage(
      source: ImageSource.camera,
      maxWidth: 2000,
      maxHeight: 2000,
    );
    setState(() {
      _image = pickedFile!;
      imagepath = _image!.path;
    });
  }

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
        title: const Text(
          "ສ້າງບັນຊີຜູ້ໃຊ້",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(PageTransition(
                    child: const advice_lg_regit(),
                    type: PageTransitionType.rightToLeft));
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: Container(
        color: Colors.green,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Form(
                key: formkey,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/icons/logo.png",
                          width: 130,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                        ]),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            label: Text("ຊື່ຜູ້ໃຊ້"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            icon: const Icon(Icons.person),
                            hintText: "ຊື່ຜູ້ໃຊ້"),
                        onSaved: (User_email) {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                        ]),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            label: Text("ນາມສະກຸນ"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            icon: const Icon(Icons.person),
                            hintText: "ນາມສະກຸນ"),
                        onSaved: (User_email) {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        child: const Text(
                          "ເລືອກເພດ",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            child: const Text(
                              "ເພດ",
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.green),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 221, 221, 221),
                            ),
                            width: 230,
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
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        child: const Text(
                          "ທີ່ຢູ່ຂອງທ່ານປັດຈຸບັນ",
                          textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            child: const Text(
                              "ແຂວງ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.green),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 221, 221, 221),
                            ),
                            width: 230,
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
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            child: const Text(
                              "ເມືອງ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.green),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 221, 221, 221),
                            ),
                            width: 230,
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
                      const SizedBox(
                        height: 15,
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
                              label: Text("ບ້ານທີ່ທ່ານຢູ່ປັດຈຸບັນ"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              icon: const Text("ບ້ານ",
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.green)),
                              hintText: "ບ້ານທີ່ທ່ານຢູ່ປັດຈຸບັນ"),
                          onSaved: (User_email) {},
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
                            label: Text("ເບີໂທລະສັບ"),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: const Text(
                                '+856 20 | ',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black38),
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            icon: const Icon(Icons.phone),
                            hintText: "ເບີໂທລະສັບຂອງທ່ານ"),
                        onSaved: (Uphone) {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                        ]),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            label: Text("ສ້າງລະຫັດຜ່ານ"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            icon: const Icon(Icons.key),
                            hintText: "ສ້າງລະຫັດຜ່ານ"),
                        onSaved: (User_email) {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                        ]),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            label: Text("ຢືນຢັນລະຫັດຜ່ານ"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            icon: const Icon(Icons.password),
                            hintText: "ຢືນຢັນລະຫັດຜ່ານ"),
                        onSaved: (User_email) {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        child: Text("ເລືອກຮູບໂປຣຟາຍຂອງທ່ານ"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Stack(children: <Widget>[
                          CircleAvatar(
                              radius: 50.0,
                              backgroundImage: _image == null
                                  ? const AssetImage("assets/icons/user.png")
                                  : AssetImage(imagepath)),
                          Positioned(
                            child: InkWell(
                              onTap: () {
                                shows(context);
                              },
                              child: const Icon(
                                Icons.camera_alt,
                                size: 35,
                              ),
                            ),
                            bottom: 0.0,
                            right: 0.0,
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            formkey.currentState!.validate();
                            Navigator.of(context).pushReplacement(
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: bottombar_lg()));
                          },
                          label: const Icon(Icons.insert_chart),
                          icon: const Text(
                            "ລົງທະບຽນ",
                            style: const TextStyle(fontSize: 20),
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
          ),
        ),
      ),
    );
  }

  Future<dynamic> shows(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        titlePadding: const EdgeInsets.all(0),
        title: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "ເລືອກຮູບໂປຟາຍຂອງທ່ານ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                  const SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: FlatButton(
                onPressed: getimageCam,
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(child: const Icon(Icons.camera_alt)),
                        const SizedBox(
                          width: 20,
                        ),
                        const SizedBox(
                          child: const Text(
                            "ກ້ອງຖ່າຍຮູບ",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: FlatButton(
                onPressed: getimagePic,
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(child: const Icon(Icons.photo)),
                        const SizedBox(
                          width: 20,
                        ),
                        const SizedBox(
                          child: const Text(
                            "ຄັງຮູບພາບ",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
