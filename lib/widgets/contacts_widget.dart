import 'package:chat_clone/models/message_model.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
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
            color: Color(0xfff0e19e),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: favo.length,
              padding: EdgeInsets.only(left: 13.0),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(favo[index].imageUrl),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        favo[index].name,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
