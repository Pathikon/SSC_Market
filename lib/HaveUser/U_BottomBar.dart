import 'package:flutter/material.dart';
import 'package:ssc_market/HaveUser/U_Home.dart';
import 'package:ssc_market/HaveUser/U_MyStore.dart';
import 'package:ssc_market/HaveUser/U_Other.dart';

class u_bottombar extends StatefulWidget {
  const u_bottombar({Key? key}) : super(key: key);

  @override
  State<u_bottombar> createState() => _u_bottombarState();
}

class _u_bottombarState extends State<u_bottombar> {
  int currentTab = 0;
  final List<Widget> screens = [u_home(), u_bottombar(), u_store(), u_other()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = u_home();

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
                    height: 65,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = u_home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color:
                              currentTab == 0 ? Colors.white : Colors.white54,
                        ),
                        Text(
                          "ໜ້າຫຼັກ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: currentTab == 0
                                  ? Colors.white
                                  : Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = u_store();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.store,
                          color:
                              currentTab == 1 ? Colors.white : Colors.white54,
                        ),
                        Text(
                          "ຮ້ານຄ້າ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: currentTab == 1
                                  ? Colors.white
                                  : Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = u_other();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.other_houses,
                          color:
                              currentTab == 2 ? Colors.white : Colors.white54,
                        ),
                        Text(
                          "ບໍລິການອື່ນໆ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: currentTab == 2
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
