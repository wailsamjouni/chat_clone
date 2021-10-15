import 'package:chat_clone/models/message_model.dart';
import 'package:chat_clone/widgets/category_widget.dart';
import 'package:chat_clone/widgets/chat_widget.dart';
import 'package:chat_clone/widgets/contacts_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFf56042),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 29.0,
                color: Colors.white,
              )),
          title: Text(
            'App',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                size: 29.0,
                color: Colors.white,
              ),
            )
          ],
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            CategoryWidget(),
            //----------
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfff0e19e),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Column(
                  children: <Widget>[
                    ContactWidget(),
                    ChatWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFf56042));
  }
}
