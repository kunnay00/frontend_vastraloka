import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vastraloka/screens/success_page.dart';

class PickUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 221, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        leading: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.arrow_back),
          color: Color.fromRGBO(97, 163, 186, 1),
          iconSize: 25,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Pick Up',
            style: TextStyle(
              color: Color.fromRGBO(97, 163, 186, 1),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  'Pick up schedule',
                  style: TextStyle(
                    color: Color.fromRGBO(210, 222, 50, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(162, 197, 121, 1)),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                    ),
                    labelText: 'Date',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(162, 197, 121, 1)),
                    ),
                    labelText: 'Time',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(162, 197, 121, 1)),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                    ),
                    labelText: 'Notes',
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  'Pick up address',
                  style: TextStyle(
                    color: Color.fromRGBO(210, 222, 50, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color.fromRGBO(162, 197, 121, 1)),
                    ),
                    labelText: 'Jl. Mawar No. 23 (depan gang)',
                  ),
                ),
                SizedBox(height: 400),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SuccessPage()),
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 221, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                  ),
                  SizedBox(height: 20), 
                ],
              ),
            ),
          )
        )
      );
    }
  }


