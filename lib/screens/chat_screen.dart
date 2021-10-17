import 'package:chat_clone/screens/home_screen.dart';
import 'package:chat_clone/widgets/chat_widget.dart';
import 'package:flutter/material.dart';

import 'package:chat_clone/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  const ChatScreen({required this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFf56042),
          leading: IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                  )),
              icon: Icon(
                Icons.arrow_back,
                size: 30.0,
              ))),
    );
  }
}
