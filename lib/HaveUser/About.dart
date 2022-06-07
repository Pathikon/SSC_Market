import 'package:flutter/material.dart';

class Abouts extends StatefulWidget {
  const Abouts({Key? key}) : super(key: key);

  @override
  State<Abouts> createState() => _AboutsState();
}

class _AboutsState extends State<Abouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("ກ່ຽວກັບແອັບພິເຄຊັ່ນ", style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset('image/logo.png'),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Text(
                  "ແອັບພິເຄຊັ່ນຕະຫຼາດສີແສງຈັນ",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Text(
                  "     ສ້າງຂື້ນເພື່ອເປັນແອັບພິເຄຊັ່ນຈັດການຖານຂໍ້ມຼນຂອງຕະຫຼາດດັ່ງກ່າວ ເຕັກໂນໂລຊີ ແລະ ວິທະຍາສາດໃນໂລກປະຈຸບັນຂອງພວກເຮົາແມ່ນມີການເໜັງຕີງໃນທຸກໆມື້ ເຊິ່ງມີຄວາມກ້າວໜ້າມາຕະຫຼອດ ຍ້ອນວ່າມະນຸດເຮົາຕ້ອງການສິ່ງທີ່ຈະອຳນວຍຄວາມສະດວກແກ່ຕົນເອງນັບມື້ນັບຫຼາຍຂຶ້ນ ຈຶ່ງເຮັດໃຫ້ມັນການຄົ້ນຄິດປະດິດສ້າງຜະລິດຕະພັນຕ່າງໆຫຼາຍຂຶ້ນໃນແຕ່ລະມື້ ເພື່ອຕອບໂຈດແກ້ໄຂບັນຫາຫຼາຍໆຢ່າງໃນດຳລົງຊີວິດປະຈຳວັນເຊັ່ນ: ເຕັກໂນໂລຊີທີ່ໃຊ້ເຂົ້າໃນອຸດສະຫາກຳສ້າງຂຶ້ນເພື່ອໃຊ້ເຂົ້າໃນການຜະລິດ ສາມາດຜະລິດສິນຄ້າອອກມາໃຫ້ຊົມໃຊ້ໄດ້ຈຳນວນຫຼວງຫຼາຍໃນແຕ່ລະວັນ ເຊິ່ງມີຄວາມແມ່ນຢຳກວ່າມະນຸດຫຼາຍເທົ່າ ແລະ ສິນຄ້າມີຄຸນນະພາບສູງ, ເຕັກໂນໂລຊີທີ່ໃຊ້ໃນການສື່ສານ ເປັນເຕັກໂນໂລຊີທີ່ນິຍົມທີ່ສຸດໃນປະຈຸບັນ ເພື່ອໃຊ້ເຂົ້າໃນການຕິດຕໍ່ທຸລະກິດຕ່າງໆ ເຊິ່ງສາມາດຕິດຕໍ່ກັນໄດ້ທົ່ວໂລກ ເຮັດໃຫ້ສາມາດຊື້ຂາຍແລກປ່ຽນກັນໃນ ເຖິງແມ່ນວ່າຈະຢູ່ຄົນລະທະວີບ ໃນໂລກປະຈຸບັນເຕັກໂນໂລຊີນີ້ມະນຸດອາດຈະຂາດບໍ່ໄດ້ແລ້ວ ເພື່ອໃຊ້ຊີວິດປະຈຳວັນໃນທີ່ ທີ່ມີສັງຄົມແຂ່ງຂັນກັນສູງ.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
