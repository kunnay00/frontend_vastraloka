import 'package:flutter/material.dart';
import 'package:vastraloka/screens/navigation.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 221, 1),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Color.fromRGBO(97, 163, 186, 1),
                  size: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Thank You!',
                  style: TextStyle(
                    color: Color.fromRGBO(97, 163, 186, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Your kindness has helped reduce clothing waste on Earth.',
                  style: TextStyle(
                    color: Color.fromRGBO(162, 197, 121, 1),
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 95, vertical: 20), // Sesuaikan padding di sini
                    backgroundColor: Color.fromRGBO(97, 163, 186, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Navigation()),
                        );
                      },
                  child: Text(
                    'Back to homepage',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 221, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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

