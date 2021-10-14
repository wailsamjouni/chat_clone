import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int _selectedIndex = 0;
  final List<String> listCategory = ['Message', 'Online', 'Groups', 'Requests'];
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.blue,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCategory.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Text(
                  listCategory[index],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: index == _selectedIndex
                          ? Colors.white
                          : Colors.white60,
                      letterSpacing: 1.5),
                ),
              ),
            );
          }),
    );
  }
}
