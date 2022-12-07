import 'package:fetch_api_dio/pages/components/loading_overlay.dart';
import 'package:fetch_api_dio/pages/post/components/posts_list_item.dart';
import 'package:fetch_api_dio/pages/post/posts_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Posts', style: TextStyle(color: Colors.black),)),
      ),
      body: Container(
        child: GetBuilder<PostsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.postsList.length,
                itemBuilder: (context, index) =>
                    PostsListItem(post: controller.postsList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
