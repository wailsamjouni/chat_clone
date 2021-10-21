import 'package:chat_clone/models/message_model.dart';
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
    final sizeOfScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf56042),
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            widget.user.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFFf56042),
        leading: IconButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              )),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25.0,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.more_horiz,
              size: 25.0,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return Row(
                        children: [
                          Container(
                            width: sizeOfScreen.width * 0.65,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 13.0),
                            margin: isMe
                                ? EdgeInsets.only(
                                    left: 70.0, top: 10.0, bottom: 8.0)
                                : EdgeInsets.only(top: 10.0, bottom: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  message.time,
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                ),
                                SizedBox(height: 7.0),
                                Text(
                                  message.text,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color:
                                  isMe ? Color(0xfff0e19e) : Color(0xfffffefee),
                              borderRadius: isMe
                                  ? BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0))
                                  : BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)),
                            ),
                          ),
                          !isMe
                              ? IconButton(
                                  onPressed: () {},
                                  icon: message.isLiked
                                      ? Icon(
                                          Icons.favorite,
                                        )
                                      : Icon(Icons.favorite_border),
                                  iconSize: 30.0,
                                  color: message.isLiked
                                      ? Colors.red
                                      : Colors.blueGrey,
                                )
                              : SizedBox.shrink(),
                        ],
                      );
                    }),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: 75.0,
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_add,
                      size: 25.0,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Write your message',
                          hintStyle:
                              TextStyle(fontSize: 16.0, color: Colors.black54)),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      size: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
