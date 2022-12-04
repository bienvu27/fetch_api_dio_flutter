import 'package:fetch_api_dio/pages/post/posts_provider.dart';
import 'package:get/get.dart';

import '../../models/Post.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    PostProvider().getPostsList(
        beforeSend: () {
      print('before send');
    }, onSuccess: (posts) {
      postsList.addAll(posts);
      isLoading = false;
      update();
      print(posts.length);
    }, onError: (error) {
      isLoading = false;
      update();
      print('error');
    });
    super.onInit();
  }
}
