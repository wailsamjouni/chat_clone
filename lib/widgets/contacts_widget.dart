import 'package:chat_clone/models/message_model.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Favorite contacts',
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    letterSpacing: 1.1),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 30.0,
                  color: Colors.blueGrey,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 120.0,
          color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favo.length,
            padding: EdgeInsets.only(left: 20.0),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage(favo[index].imageUrl),
                  ),
                  Text(favo[index].name),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
