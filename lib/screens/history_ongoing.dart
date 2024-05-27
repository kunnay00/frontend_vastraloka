import 'package:flutter/material.dart';
import 'package:vastraloka/screens/history_detail_ongoing.dart';
import 'package:vastraloka/screens/history_page.dart';
import 'dart:async';

class OngoingPage extends StatefulWidget {
  const OngoingPage({Key? key}) : super(key: key);

  @override
  State<OngoingPage> createState() => _OngoingPageState();
}

class _OngoingPageState extends State<OngoingPage> {
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'History',
                          style: TextStyle(
                            color: Color.fromRGBO(97, 163, 186, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                      transform: Matrix4.translationValues(
                        _isRight ? 5.0 : -5.0,
                        0.0,
                        0.0,
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Color.fromRGBO(97, 163, 186, 1),
                        size: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Ongoing',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(97, 163, 186, 1),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '|',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(97, 163, 186, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HistoryPage()),
                        );
                      },
                      child: Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 20,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OngoingDetailPage()),
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
                          SizedBox(width: 10),
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
                                SizedBox(height: 5),
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
                            children: [
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
                                '8 Pcs',
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
