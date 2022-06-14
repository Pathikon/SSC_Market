import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_field_validator/form_field_validator.dart';

class forgetpassword extends StatefulWidget {
  const forgetpassword({Key? key}) : super(key: key);

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("ປ່ຽນລະຫັດຜ່ານໃໝ່"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Form(
              key: formkey,
              child: Column(
                children: [
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
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            '+856 20 | ',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black38),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        icon: Icon(Icons.person),
                        hintText: "ໃສ່ເບີໂທຂອງທ່ານ"),
                    onSaved: (Uphone) {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "ກະລຸນາໃສ່ລະຫັດຜ່ານຂອງທ່ານ")
                    ]),
                    onTap: () {
                      setState(() {});
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        icon: Icon(Icons.lock),
                        hintText: "ໃສ່ລະຫັດຜ່ານໃໝ່ຂອງທ່ານ"),
                    onSaved: (Upassw) {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    icon: Icon(Icons.password),
                    label: Text(
                      "ຢືນຢັນ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      formkey.currentState!.validate();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
