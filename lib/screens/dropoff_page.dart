import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vastraloka/screens/success_page.dart';

class DropOff extends StatelessWidget {
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
            'Drop Off',
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
                Container(
                  height: 85,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(162, 197, 121, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Deliver your used clothes with the recipient information as follows',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(255, 255, 221, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 25),
                Container(
                padding: EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Color.fromRGBO(162, 197, 121, 1),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Name:      ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(162, 197, 121, 1),
                        ),
                      ),
                      Text(
                        'Vastraloka',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(97, 163, 186, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Color.fromRGBO(162, 197, 121, 1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Address:   ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(162, 197, 121, 1),
                        ),
                      ),
                      Expanded(child:
                      Text(
                        'Jl. Mawar No. 23, Cempaka Putih, Jakarta Pusat, 10510',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(97, 163, 186, 1),
                        ),
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 495),
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


