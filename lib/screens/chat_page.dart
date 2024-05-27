import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vastraloka/screens/roomchat_page.dart';
import 'package:vastraloka/screens/notification_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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

  void _navigateToRoomChat() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RoomChat()),
    );
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
                SizedBox(height: 58),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chat',
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
                GestureDetector(
                  onTap: _navigateToRoomChat,
                  child: ChatItem(
                    sender: 'Valo Admin',
                    message: 'Apakah bisa menambah baju lg?',
                    time: '10:00 AM',
                    borderRadius: BorderRadius.zero,
                    backgroundColor: Color.fromRGBO(255, 255, 221, 1),
                    boxShadow: [],
                    height: 90,
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                ),
                GestureDetector(
                  onTap: _navigateToRoomChat,
                  child: ChatItem(
                    sender: 'Valo Treasurer',
                    message: 'Baik kk',
                    time: '10:05 AM',
                    borderRadius: BorderRadius.zero,
                    backgroundColor: Color.fromRGBO(255, 255, 221, 1),
                    boxShadow: [],
                    height: 90,
                    screenWidth: MediaQuery.of(context).size.width,
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

class ChatItem extends StatelessWidget {
  final String sender;
  final String message;
  final String time;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final double? height;
  final double? screenWidth;

  const ChatItem({
    required this.sender,
    required this.message,
    required this.time,
    this.borderRadius,
    this.backgroundColor,
    this.boxShadow,
    this.height,
    this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: screenWidth,
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
                      sender,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(97, 163, 186, 1),
                      ),
                    ),
                    Text(
                      message,
                      style: TextStyle(
                        color: Color.fromRGBO(210, 222, 50, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(210, 222, 50, 1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
