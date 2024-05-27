import 'package:vastraloka/screens/home_page.dart';
import 'package:vastraloka/screens/history_page.dart';
//import 'package:vastraloka/screens/history_ongoing.dart';
import 'package:vastraloka/screens/chat_page.dart';
import 'package:vastraloka/screens/account_page.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HistoryPage(),
    ChatPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(0),
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 221, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(ListOfIcon.length, (index) {
            return Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                        bottom: index == _selectedIndex ? 0.8 : 20,
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(97, 163, 186, 1),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10))),
                      height: index == _selectedIndex ? 4 : 0,
                      width: 30,
                    ),
                    SizedBox(height: 5),
                    Icon(
                      ListOfIcon[index],
                      size: 30,
                      color: index == _selectedIndex
                          ? Color.fromRGBO(97, 163, 186, 1)
                          : Colors.black38,
                    ),
                    SizedBox(height: 0.2),
                    Text(
                      ListOfText[index],
                      style: TextStyle(
                        fontSize: 9,
                        color: index == _selectedIndex
                            ? Color.fromRGBO(97, 163, 186, 1)
                            : Colors.black38,
                      ),
                    ),
                    SizedBox(height: 10, width: 30)
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

List<IconData> ListOfIcon = [
  Icons.home_rounded,
  Icons.history_rounded,
  Icons.chat_bubble_rounded,
  Icons.person_rounded,
];

List<String> ListOfText = [
  'Home',
  'History',
  'Chat',
  'Account'
];
