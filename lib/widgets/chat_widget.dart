import 'package:chat_clone/models/message_model.dart';
import 'package:chat_clone/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message chatElement = chatList[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          user: chatElement.sender,
                        ),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: chatElement.unread
                            ? Color(0xfffffefee)
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                      ),
                      margin:
                          EdgeInsets.only(top: 7.0, right: 20.0, bottom: 5.0),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 35.0,
                                backgroundImage:
                                    AssetImage(chatList[index].sender.imageUrl),
                              ),
                              SizedBox(width: 12.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    chatElement.sender.name,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 6.0),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.40,
                                    child: Text(
                                      chatList[index].text,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.blueGrey),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                chatElement.time,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              chatElement.unread
                                  ? Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10.0),
                                      width: 43,
                                      height: 20.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Color(0xff25D366),
                                      ),
                                      child: Text(
                                        'NEW',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ))
                                  : Text(''),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )),
    );
  }
}
