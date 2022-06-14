import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/Logins.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/Registers.dart';


class bottombar_lg extends StatefulWidget {
  const bottombar_lg({Key? key}) : super(key: key);

  @override
  State<bottombar_lg> createState() => _HomeappState();
}

class _HomeappState extends State<bottombar_lg> {
  int currentTab = 0;
  final List<Widget> screens = [bottombar_lg(), logins(), registers()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = logins();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: CircularNotchedRectangle(),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Divider(
                    height: 60,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = logins();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.login,
                          color:
                              currentTab == 0 ? Colors.white : Colors.white54,
                        ),
                        Text(
                          "ເຂົ້າສູ່ລະບົບ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: currentTab == 0
                                  ? Colors.white
                                  : Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 70,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = registers();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          color:
                              currentTab == 1 ? Colors.white : Colors.white54,
                        ),
                        Text(
                          "ສ້າງບັນຊີຜູ້ໃຊ້",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: currentTab == 1
                                  ? Colors.white
                                  : Colors.white54),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
