import 'package:flutter/material.dart';

import 'models/posts.dart';
import 'services/getposts.dart';

class posts extends StatefulWidget {
  posts({Key key}) : super(key: key);

  @override
  _postsState createState() => _postsState();
}

class _postsState extends State<posts> {
  List<Posts> postList = new List();

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  getPosts() async {
    postList = await postsService().getPosts();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lab 2'),
      ),
      body: Center(
        child: Card(
          child: ListView.builder(
              itemCount: postList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(postList[index].title,
                            style: TextStyle(fontSize: 30)),
                      ),
                    ),
                    Image.network(postList[index].body),
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
                );
              }),
        ),
      ),
    );
  }
}
