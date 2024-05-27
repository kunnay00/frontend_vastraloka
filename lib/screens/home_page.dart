import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vastraloka/screens/trash_page.dart';
import 'package:vastraloka/screens/donate_page.dart';
import 'package:vastraloka/screens/sell_page.dart';
import 'package:vastraloka/screens/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isRight = true;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _isRight = !_isRight;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); 
    super.dispose();
  }

  void _navigateToPage(String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 221, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Cimcim!',
                          style: TextStyle(
                            color: Color.fromRGBO(97, 163, 186, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'What good do you want today?',
                          style: TextStyle(
                            color: Color.fromRGBO(97, 163, 186, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotificationPage()),
                        );
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut,
                        transform: Matrix4.translationValues(_isRight ? 5.0 : -5.0, 0.0, 0.0),
                        child: Icon(
                          Icons.notifications,
                          color: Color.fromRGBO(97, 163, 186, 1),
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '     Trash',
                      style: TextStyle(
                        color: Color.fromRGBO(210, 222, 50, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrashPage()),
                        );
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        height: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(162, 197, 121, 1),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              padding: EdgeInsets.all(10),
                              color: Color.fromRGBO(162, 197, 121, 1),
                              child: Text(
                                "Come on! Let's preserve the earth by giving us your used clothes.",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/buang.png',
                              width: 150,
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '     Donate',
                        style: TextStyle(
                          color: Color.fromRGBO(210, 222, 50, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DonatePage()),
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          height: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(162, 197, 121, 1),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 170,
                                padding: EdgeInsets.all(10),
                                color: Color.fromRGBO(162, 197, 121, 1),
                                child: Text(
                                  "Give used clothes that are still suitable for use to people in need.",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/images/donasi.png',
                                width: 150,
                                height: 150,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '     Sell',
                        style: TextStyle(
                          color: Color.fromRGBO(210, 222, 50, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SellPage()),
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          height: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(162, 197, 121, 1),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 170,
                                padding: EdgeInsets.all(10),
                                color: Color.fromRGBO(162, 197, 121, 1),
                                child: Text(
                                  "Sell your used clothes and turn pre-loved ones into an opportunity to make a profit.",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/images/jual.png',
                                width: 150,
                                height: 150,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ]
            )
          )
        )
      )
    );
  }
}
          