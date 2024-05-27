import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vastraloka/screens/history_detail_completed.dart';
import 'package:vastraloka/screens/history_ongoing.dart';
import 'package:vastraloka/screens/notification_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool _isRight = true;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 221, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 58),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'History',
                      style: TextStyle(
                        color: Color.fromRGBO(97, 163, 186, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => OngoingPage()),
                        );
                      },
                      child: const Text(
                        'Ongoing',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(97, 163, 186, 1),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      '|',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(97, 163, 186, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => CompletedPage()),
                        );
                      },
                      child: const Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(97, 163, 186, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  color: Color.fromRGBO(162, 197, 121, 1),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => CompletedPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/donasi.png',
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Donate',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 255, 221, 1),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Dress \nTrousers \nGamis',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(255, 255, 221, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                '\n10 Pcs',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 255, 221, 1),
                                ),
                              ),
                              Text(
                                '5 Pcs',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 255, 221, 1),
                                ),
                              ),
                              Text(
                                '3 Pcs',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 255, 221, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
