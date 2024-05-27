import 'package:flutter/material.dart';
import 'package:vastraloka/screens/chat_page.dart';
import 'dart:async';

class RoomChat extends StatefulWidget {
  const RoomChat({Key? key}) : super(key: key);

  @override
  State<RoomChat> createState() => _RoomChatState();
}

class _RoomChatState extends State<RoomChat> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(97, 163, 186, 1),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromRGBO(97, 163, 186, 1), // Warna latar belakang lingkaran
                    child: Icon(
                      Icons.person,
                      color: Colors.white, // Warna ikon profil
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Valo Admin',
                          style: TextStyle(
                            color: Color.fromRGBO(97, 163, 186, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    ChatBubble(
                      isSender: true,
                      message: 'Apa aku bisa nambah baju bekas lagi min?',
                      time: '10:00 AM',
                      showTime: false, // Hide time for the second message
                    ),
                    ChatBubble(
                      isSender: true,
                      message: 'Tadi ada yg keselip',
                      time: '10:00 AM',
                    ),
                    ChatBubble(
                      isSender: false,
                      message: 'Boleh banget kk',
                      time: '10:02 AM',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(97, 163, 186, 1), // Warna tepian untuk mengirim chat
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type your message...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none, // Menghilangkan tepian bawah
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          // Logic to send message
                        },
                        color: Color.fromRGBO(97, 163, 186, 1), // Warna ikon kirim
                      ),
                    ],
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

class ChatBubble extends StatelessWidget {
  final bool isSender;
  final String message;
  final String time;
  final bool showTime;

  const ChatBubble({
    required this.isSender,
    required this.message,
    required this.time,
    this.showTime = true, // Default to true, hide if explicitly set to false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSender
                  ? Color.fromRGBO(162, 197, 121, 1)
                  : Color.fromRGBO(255, 255, 221, 1),
              borderRadius: BorderRadius.circular(10),
              border: isSender
                  ? null
                  : Border.all(
                      color: Color.fromRGBO(162, 197, 121, 1),
                      width: 2.0,
                    ),
            ),
            child: Text(
              message,
              style: TextStyle(
                color: isSender ? Color.fromRGBO(255, 255, 221, 1) : Color.fromRGBO(162, 197, 121, 1),
              ),
            ),
          ),
          if (showTime) // Show time if showTime is true
            Column(
              children: [
                SizedBox(height: 5),
                Text(
                  time,
                  style: TextStyle(fontSize: 12, color: Color.fromRGBO(162, 197, 121, 1)),
                ),
              ],
            ),
        ],
      )
    );
  }
}
