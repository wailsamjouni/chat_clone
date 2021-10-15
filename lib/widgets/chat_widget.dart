import 'package:chat_clone/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 400.0,
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
                  return Container(
                    margin: EdgeInsets.only(top: 7.0, right: 20.0, bottom: 5.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
                                  chatList[index].sender.name,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 6.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Text(
                                    chatList[index].text,
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.blueGrey),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(chatList[index].time),
                            Text('NEW'),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          )),
    );
  }
}
