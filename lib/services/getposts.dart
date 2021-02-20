import 'package:app/models/posts.dart';
import 'package:dio/dio.dart';

class postsService {
  String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Posts>> getPosts() async {
    List<Posts> psot = new List();
    Response response;
    Dio dio = new Dio();
    response = await dio.get(url);
    var data = response.data;
    data.forEach((v) {
      psot.add(Posts.fromJson(v));
    });
    return psot;
  }
}
