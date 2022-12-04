import 'package:fetch_api_dio/models/Post.dart';
import 'package:flutter/widgets.dart';

class PostsListItem extends StatelessWidget {
  const PostsListItem({Key? key, required this.post}) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${post.title}'),
    );
  }
}
