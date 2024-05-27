import 'package:flutter/material.dart';
import 'package:vastraloka/screens/history_page.dart';
import 'package:vastraloka/screens/history_ongoing.dart';
import 'package:vastraloka/screens/tracking.dart';
import 'dart:async';

class OngoingDetailPage extends StatefulWidget {
  const OngoingDetailPage({Key? key}) : super(key: key);

  @override
  State<OngoingDetailPage> createState() => _OngoingDetailPageState();
}

class _OngoingDetailPageState extends State<OngoingDetailPage> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 58),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OngoingPage())
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(97, 163, 186, 1), 
                    ),
                  ),
                  Expanded(
                        child: Column(
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
                      ),                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    transform: Matrix4.translationValues(
                        _isRight ? 5.0 : -5.0, 0.0, 0.0),
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
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    Tracking(
                      endChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          Text(
                            "Dikemas",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(height: 4.0), 
                          Text(
                            "12 April 2024",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4.0), 
                          Text(
                            "barang yang akan didonasikan telah disiapkan, dikemas dengan aman, dan siap dikirim ke lokasi tujuan",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      isFirst: true,
                      isLast: false,
                    ),
                    Tracking(
                      endChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          Text(
                            "Dalam Perjalanan",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(height: 4.0), 
                          Text(
                            "15 April 2024",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4.0), 
                          Text(
                            "paket donasi sudah berada dalam perjalanan menuju lokasi penerima donasi",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      isFirst: false,
                      isLast: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
