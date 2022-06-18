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
      body: Container(
        color: Colors.green,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "ແອັບພິເຄຊັ່ນ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(31, 156, 156, 156),
                      ),
                      child: Text(
                        "ການສ້າງ Application ເພື່ອໃຊ້ເຂົ້າໃນວຽກງານຂອງຕະຫຼາດແສນອຸດົມຫຼັກ 20. ໂດຍມີຈຸດປະສົງ ເພື່ອສ້າງຄວາມສະດວກສະບາຍໃນການພົວເຊິ່ງກັນ ແລະ ກັນລະຫວ່າງ ພະນັກງານຂອງຕະຫຼາດ ກັບ ພໍ່ຄ້າຊາວຂາຍ ແລະ ເຈົ້າຂອງຕະຫຼາດ ທີ່ຕ້ອງການຈະເຮັດທຸລະກໍາຕ່າງໆເຊັ່ນ: ການຊໍາລະເງິນ, ການເບິ່ງສະຖານະຫ້ອງເຊົ່າ, ການເບິ່ງລາຍລະອຽດຕ່າງຂອງຕະຫຼາດ... ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54, fontSize: 17),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "ຜູ້ພັດທະນາ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    profile(
                      pic: "assets/images/pelou.jpg",
                      name: "ທ້າວ ປາທິກອນ ພົມມະສານ",
                      student: "ນັກສຶກສາ ສະຖາບັນ ເຕັກໂນໂລຊີ ສຸດສະກະ",
                      dev: "Frontend Developer",
                      mail: "pelou.pms@gmail.com",
                      tel: "+85620 97625343",
                      facebook: "Pathikone Phommasan",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    profile(
                      pic: "assets/images/aek.jpg",
                      name: "ທ້າວ ຈີລະຍຸ ວົງສິລິ",
                      student: "ນັກສຶກສາ ສະຖາບັນ ເຕັກໂນໂລຊີ ສຸດສະກະ",
                      dev: "Backend Developer",
                      mail: "aek123806@gmail.com",
                      tel: "+85620 96218527",
                      facebook: "A'aek Vongsili",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    profile(
                      pic: "assets/images/viseth.jpg",
                      name: "ທ້າວ ວິເສດ ຄຳສຸກຖາວົງ",
                      student: "ນັກສຶກສາ ສະຖາບັນ ເຕັກໂນໂລຊີ ສຸດສະກະ",
                      dev: "Developer",
                      mail: "visethmie@gmail.com",
                      tel: "+85620 93039850",
                      facebook: "Viseth Khamsoukthavong",
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

// #############################################################

class profile extends StatelessWidget {
  final pic;
  final String name;
  final String student;
  final String dev;
  final String mail;
  final String tel;
  final String facebook;
  const profile({
    Key? key,
    this.pic,
    required this.name,
    required this.student,
    required this.dev,
    required this.mail,
    required this.tel,
    required this.facebook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(31, 156, 156, 156)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(600),
              child: Image.asset(
                pic,
                width: 150,
                height: 150,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        name,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.school,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        student,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.code,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        dev,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        mail,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.whatsapp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        tel,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        facebook,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
