import 'package:fetch_api_dio/pages/account/account_page.dart';
import 'package:fetch_api_dio/pages/alerts/alerts_page.dart';
import 'package:fetch_api_dio/pages/dashboard/dashborad_controller.dart';
import 'package:fetch_api_dio/pages/home/home_page.dart';
import 'package:fetch_api_dio/pages/post/posts_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomePage(),
                  const PostsPage(),
                  AlertsPage(),
                  AccountPage(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.home,
                    label: 'Home'
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.book,
                  label: 'News'
                ),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.bell,
                    label: 'Alerts'
                ),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.person,
                    label: 'Account'
                ),
              ],
            ),
          );
        }

    );
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
