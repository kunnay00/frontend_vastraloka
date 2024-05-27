import 'package:flutter/material.dart';
import 'package:vastraloka/screens/dropoff_page.dart';
import 'package:vastraloka/screens/pickup_page.dart';

class TrashPage extends StatefulWidget {
  @override
  _TrashPageState createState() => _TrashPageState();
}

class _TrashPageState extends State<TrashPage> {
  String? _selectedMethod;

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
            'Trash',
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
                  'Disposal Information',
                  style: TextStyle(
                    color: Color.fromRGBO(210, 222, 50, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(162, 197, 121, 1),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 180,
                        padding: EdgeInsets.all(10),
                        color: Color.fromRGBO(162, 197, 121, 1),
                        child: Text(
                          'Damaged clothes',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 255, 221, 1)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(162, 197, 121, 1)),
                    ),
                    labelText: 'Weight (kg)',
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
                  'Method of handing over clothes',
                  style: TextStyle(
                    color: Color.fromRGBO(210, 222, 50, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  value: _selectedMethod,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 221, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 221, 1),
                      ),
                    ),
                    labelText: 'Method',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'Pick Up',
                      child: Text('Pick Up'),
                    ),
                    DropdownMenuItem(
                      value: 'Drop Off',
                      child: Text('Drop Off'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedMethod = value;
                    });
                  },
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
                        if (_selectedMethod == 'Pick Up') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PickUp()),
                          );
                        } else if (_selectedMethod == 'Drop Off') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DropOff()),
                          );
                        }
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
      ),
    );
  }
}
