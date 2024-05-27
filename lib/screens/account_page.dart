import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vastraloka/screens/notification_page.dart';
import 'package:vastraloka/screens/change1.dart';
import 'package:vastraloka/screens/change2.dart';
import 'package:vastraloka/screens/change3.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 221, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 55),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account',
                          style: TextStyle(
                            color: Color.fromRGBO(97, 163, 186, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                SizedBox(height: 35),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(97, 163, 186, 1), 
                    borderRadius: BorderRadius.circular(10), 
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(210, 222, 50, 1), 
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'TRIO CIMCIM',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(210, 222, 50, 1), // Warna teks dapat disesuaikan
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangeProfile()), // Ganti halaman saat di klik
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 190,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromRGBO(162, 197, 121, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(162, 197, 121, 1),
                          ),
                        ),
                        Text(
                          'TRIO CIMCIM',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(97, 163, 186, 1),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(162, 197, 121, 1),
                          ),
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(97, 163, 186, 1),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Date of Birth',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(162, 197, 121, 1),
                          ),
                        ),
                        Text(
                          '12 Juli 2003',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(97, 163, 186, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditPhonePage()), // Ganti halaman saat di klik
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 85,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromRGBO(162, 197, 121, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(162, 197, 121, 1),
                            ),
                          ),
                          Text(
                            '081245632145',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(97, 163, 186, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditAddressPage()), // Ganti halaman saat di klik
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 105,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Color.fromRGBO(162, 197, 121, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Address',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(162, 197, 121, 1),
                              ),
                            ),
                            Text(
                              'Jl. Mawar No. 23, Cempaka Putih, Jakarta Pusat, 10510',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(97, 163, 186, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                ),
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                  width: MediaQuery.of(context).size.width - 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        backgroundColor: Color.fromRGBO(97, 163, 186, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        'Delete Account',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 221, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                  width: MediaQuery.of(context).size.width - 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        backgroundColor: Color.fromRGBO(97, 163, 186, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 221, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
