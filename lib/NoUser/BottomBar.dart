import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/NoUser/Home.dart';
import 'package:ssc_market/NoUser/Homemarket/StoreNoUser.dart';
import 'package:ssc_market/NoUser/Other.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int currentTab = 0;
  final List<Widget> screens = [home(), bottombar(), storeNouser(), other()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = home();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Text(
              'ທ່ານຕ້ອງການອອກຈາກແອັບບໍ່?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text(
                        'ຍົກເລີກ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.circular(10)),
                    width: 130,
                    child: TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('ອອກ',
                          style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
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
                          currentScreen = home();
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
                          currentScreen = storeNouser();
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
                          currentScreen = other();
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
      ),
    );
  }
}
