import 'package:fetch_api_dio/pages/dashboard/dashborad_binding.dart';
import 'package:fetch_api_dio/pages/dashboard/dashborad_page.dart';
import 'package:fetch_api_dio/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: ()=> DashboardPage(),
      binding: DashboardBinding(),
    )
  ];
}