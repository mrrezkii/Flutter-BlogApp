import 'package:flutter_blog_app/model/post_model.dart';
import 'package:flutter_blog_app/shared/constant.dart';
import 'package:http/http.dart' as http;

class PostNetwork {
  static Future<List<PostModel>> getPosts({http.Client? client}) async {
    String url = "${baseUrl}wp/v2/posts";

    client ??= http.Client();

    var response = await client.get(Uri.parse(url));

    return postModelFromMap(response.body);
  }
}
