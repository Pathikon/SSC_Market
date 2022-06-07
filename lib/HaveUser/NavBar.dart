import 'package:flutter/material.dart';
import 'dart:io';
import '../main.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Pathikone PHOMMASAN',
                style: TextStyle(fontSize: 25, color: Colors.white)),
            accountEmail: Text('ຮ້ານຂາຍເສື້ອຜ້າ',
                style: TextStyle(fontSize: 17, color: Colors.white)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'image/Pelou.jfif',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('image/shop.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('ຮ້ານຂອງຂ້ອຍ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('ເພື່ອນ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('ແບ່ງປັນ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('ການຕັ້ງຄ່າ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('ລາຍລະອຽດເພີ່ມເຕີມ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('ຕິດຕໍ່ເຈົ້າຂອງຕະຫຼາດ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('ກ່ຽວກັບແອັບ ແລະ ຜູ້ພັດທະນາ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('ອອກ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                      onPressed: () => exit(0),
                      child: const Text(' ຕົກລົງ ',
                          style: TextStyle(fontSize: 16)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(' ກັບຄືນ ',
                          style: TextStyle(fontSize: 16)),
                    )
                  ],
                  title: const Text('ການແຈ້ງເຕືອນ'),
                  contentPadding: const EdgeInsets.all(15.0),
                  content: const Text(
                    ' ທ່ານຕ້ອງການອອກຈາກໂປຣແກຣມແທ້ບໍ່.?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
