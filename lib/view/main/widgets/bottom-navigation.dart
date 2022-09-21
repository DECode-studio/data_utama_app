import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:data_utama_app/style/color.dart';
import 'package:flutter/material.dart';

import '../../../controller/page_controller.dart';

Widget bottomNavigation(
  PagesController pageController,
  CircularBottomNavigationController navController,
) =>
    CircularBottomNavigation(
      [
        TabItem(
          Icons.home,
          "HOME",
          black,
        ),
        TabItem(
          Icons.calendar_month,
          "ABSENSI",
          black,
        ),
        TabItem(
          Icons.person,
          "PROFILE",
          black,
        ),
      ],
      controller: navController,
      selectedPos: pageController.navIndex.value,
      selectedCallback: (_) =>
          pageController.changeIndex(navController.value!.toInt()),
    );
