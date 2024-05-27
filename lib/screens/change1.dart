import 'dart:async'; // Import dart:async untuk menggunakan kelas Timer
import 'package:flutter/material.dart';

class ChangeProfile extends StatefulWidget {
  const ChangeProfile({Key? key}) : super(key: key);

  @override
  State<ChangeProfile> createState() => _ChangeProfileState();
}

class _ChangeProfileState extends State<ChangeProfile> {
  bool _isRight = true;
  late Timer _timer;
  String _selectedGender = '';

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
              AppBar(
                backgroundColor: Colors.transparent,
                 elevation: 0, 
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color.fromRGBO(97, 163, 186, 1),
                  ),
                ),
                title: Text(
                  'CHANGE',
                  style: TextStyle(
                    color: Color.fromRGBO(97, 163, 186, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(210, 222, 50, 1),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 221, 1),
                  border: Border.all(
                    color: Color.fromRGBO(162, 197, 121, 1),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  initialValue: 'TRIO CIM CIM', // Set nilai awal
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Date of Birth',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(210, 222, 50, 1),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 221, 1),
                  border: Border.all(
                    color: Color.fromRGBO(162, 197, 121, 1),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  initialValue: '15 Oktober 2022', // Set nilai awal
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Gender',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(210, 222, 50, 1),
                ),
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'Male',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                    activeColor: Color.fromRGBO(97, 163, 186, 1), // Tambahkan properti activeColor
                  ),
                  Text('Male'),
                  Radio<String>(
                    value: 'Female',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                    activeColor: Color.fromRGBO(97, 163, 186, 1), // Tambahkan properti activeColor
                  ),
                  Text('Female'),
                ],
              ),
              SizedBox(height: 350),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(45, 149, 150, 1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color.fromRGBO(241, 250, 218, 1)),
                ),
                child: Center(
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(241, 250, 218, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
