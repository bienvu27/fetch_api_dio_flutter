import 'package:fetch_api_dio/library/api_request.dart';

import '../../models/Post.dart';

class PostProvider {
  void getPostsList({
    required Function() beforeSend,
    required Function(List<Post> posts) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null).get(
        beforeSend: ()=> {beforeSend()},
        onSuccess: (data){
      onSuccess((data as List).map((e) => Post.fromJson(e)).toList());
    }, onError: (error)=> {onError});
  }
}
