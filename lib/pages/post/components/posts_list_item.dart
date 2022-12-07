import 'package:fetch_api_dio/models/Post.dart';
import 'package:flutter/material.dart';

class PostsListItem extends StatelessWidget {
  const PostsListItem({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.only(top: 20, right: 20, bottom: 15, left: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(15),
                blurRadius: 1,
                spreadRadius: 1,
                offset: const Offset(0, 1),
              )
            ]),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://picsum.photos/50/50?random=${post.id}',
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '2 days ago',
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    )
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              post.body ?? '',
              style: const TextStyle(color: Colors.black87),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.heart_broken,
                      color: Colors.black54,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                      color: Colors.black54,
                    )),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      color: Colors.black54,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.handshake,
                      color: Colors.black54,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
