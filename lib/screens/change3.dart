import 'dart:async'; // Import dart:async untuk menggunakan kelas Timer
import 'package:flutter/material.dart';

class EditAddressPage extends StatefulWidget {
  const EditAddressPage({Key? key}) : super(key: key);

  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  bool _isRight = true;
  late Timer _timer;
  TextEditingController _addressController = TextEditingController(); // Deklarasi _addressController

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
    _addressController.dispose(); // Memastikan _addressController di-dispose saat widget dihapus
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
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(97, 163, 186, 1),
                      size: 30, // Ubah ukuran ikon di sini
                    ),
                  ),
                  SizedBox(width: 16), // Tambahkan jarak di sini
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'CHANGE',
                          style: TextStyle(
                            color: Color.fromRGBO(97, 163, 186, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(210, 222, 50, 1),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _addressController, // Menggunakan _addressController
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter your Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(210, 222, 50, 1),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(162, 197, 121, 1),
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(97, 163, 186, 1),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 618),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi yang dilakukan ketika tombol Save ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(97, 163, 186, 1), // Warna latar belakang tombol
                      padding: EdgeInsets.symmetric(vertical: 23, horizontal: 0), // Padding vertical
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    child: Container(
                      width: double.infinity, // Menggunakan lebar maksimum
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 221, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
