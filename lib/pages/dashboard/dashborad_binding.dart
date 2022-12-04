import 'package:fetch_api_dio/pages/account/account_controller.dart';
import 'package:fetch_api_dio/pages/dashboard/dashborad_controller.dart';
import 'package:fetch_api_dio/pages/home/home_controller.dart';
import 'package:fetch_api_dio/pages/post/posts_controller.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<PostsController>(() => PostsController());
  }
}
