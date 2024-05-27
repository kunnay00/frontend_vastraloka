import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
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
            'Notification',
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 5),
                NotificationItem(
                  title: 'Status',
                  description: 'Baju bekas anda sedang dalam proses pe..',
                  imageUrl: '',
                  borderRadius: BorderRadius.zero,
                  backgroundColor: Color.fromRGBO(255, 255, 221, 1),
                  boxShadow: [],
                  height: 80,
                  screenWidth: MediaQuery.of(context).size.width,
                ),
                NotificationItem(
                  title: 'Payment',
                  description: 'Uang senilai Rp.350.000,- telah berhasil..',
                  imageUrl: '',
                  borderRadius: BorderRadius.zero,
                  backgroundColor: Color.fromRGBO(255, 255, 221, 1),
                  boxShadow: [],
                  height: 90,
                  screenWidth: MediaQuery.of(context).size.width,
                ),
                NotificationItem(
                  title: 'Status',
                  description: 'Baju bekas anda sudah tiba di tempat p..',
                  imageUrl: '',
                  borderRadius: BorderRadius.zero,
                  backgroundColor: Color.fromRGBO(255, 255, 221, 1),
                  boxShadow: [],
                  height: 90,
                  screenWidth: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final double? height;
  final double? screenWidth;

  const NotificationItem({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.borderRadius,
    this.backgroundColor,
    this.boxShadow,
    this.height,
    this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: height,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        border: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(97, 163, 186, 1),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(97, 163, 186, 1),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    color: Color.fromRGBO(210, 222, 50, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
