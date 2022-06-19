import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/HaveUser/U_BottomBar.dart';
import 'package:ssc_market/NoUser/About.dart';
import 'package:ssc_market/NoUser/BottomBar.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/Advice_lgAndRegit.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/forgetpassword.dart';

class logins extends StatefulWidget {
  const logins({Key? key}) : super(key: key);

  @override
  State<logins> createState() => _loginsState();
}

class _loginsState extends State<logins> {
  final formkey = GlobalKey<FormState>();
  var ac_data1 = "";
  var ac_data2 = "";
  bool pit_pass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "ຍິນດີຕ້ອນຮັບທຸກໆທ່ານ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(PageTransition(
                    child: advice_lg_regit(),
                    type: PageTransitionType.rightToLeft));
              },
              icon: Icon(Icons.info_outline))
        ],
        centerTitle: true,
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
              padding: EdgeInsets.all(30.0),
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Image.asset(
                        "assets/icons/logo.png",
                        width: 170,
                      ),
                    ),
                    Divider(
                      height: 40,
                    ),
                    TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "ກະລຸນາປ້ອນຂໍ້ມູນຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                      ]),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          label: Text("ປ້ອນເບີໂທລະສັບຂອງທ່ານ"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          icon: Icon(Icons.person),
                          hintText: "ເບີໂທລະສັບຂອງທ່ານ"),
                      onSaved: (User_email) {},
                    ),
                    SizedBox(
                      child: Text(
                        ac_data1,
                        style: TextStyle(color: Colors.red),
                      ),
                      height: 25,
                    ),
                    TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "ກະລຸນາໃສ່ລະຫັດຜ່ານຂອງທ່ານໃຫ້ຖຶກຕ້ອງ")
                      ]),
                      onTap: () {
                        setState(() {});
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          label: Text("ປ້ອນລະຫັດຜ່ານ"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          icon: Icon(Icons.lock),
                          suffixIcon: pit_pass
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          hintText: "ລະຫັດຜ່ານ"),
                      onSaved: (Upassw) {},
                    ),
                    SizedBox(
                      child: Text(
                        ac_data2,
                        style: TextStyle(color: Colors.red),
                      ),
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Text('ລືມລະຫັດຜ່ານແມ່ນບໍ່? ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 148, 148, 148))),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(PageTransition(
                                child: forgetpassword(),
                                type: PageTransitionType.rightToLeft));
                          },
                          child: Text(' ກົດທີ່ນີ້',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                        ),
                      ],
                    ),
                    Divider(
                      height: 35,
                    ),
                    Container(
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            icon: Icon(Icons.login),
                            label: Text(
                              "ເຂົ້າສູ່ລະບົບ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              formkey.currentState!.validate();
                              Navigator.of(context).pushReplacement(PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: u_bottombar()));
                            }),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'ທ່ານຍັງບໍ່ມີບັນຊີບໍ່.? ',
                            style: TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          const Text(
                            'ທ່ານຕ້ອງໄດ້ລົງທະບຽນຜູ້ໃຊ້ກ່ອນ',
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
