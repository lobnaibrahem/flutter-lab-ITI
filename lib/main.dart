import 'package:app/lab2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('lab 2'),
          ),
          body: Center(
            child: Card(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('Introduction to flutter.',
                          style: TextStyle(fontSize: 30)),
                    ),
                  ),
                  Image.network('https://via.placeholder.com/350x150'),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.thumb_up)),
                      Text('like'),
                      IconButton(icon: Icon(Icons.thumb_up)),
                      Text('comment'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => posts()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    ));
  }
}
