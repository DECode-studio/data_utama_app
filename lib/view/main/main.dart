import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:data_utama_app/view/main/widgets/bottom-navigation.dart';
import 'package:data_utama_app/view/main/widgets/grid.dart';
import 'package:data_utama_app/view/main/widgets/slide.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/page_controller.dart';
import 'widgets/header.dart';

class mainPage extends StatefulWidget {
  mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  final pageController = Get.put(PagesController());
  late CircularBottomNavigationController navController;

  @override
  void initState() {
    super.initState();
    navController = CircularBottomNavigationController(0);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: Get.height - 60,
                child: Column(
                  children: [
                    headerPage(),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          gridData(),
                          const SizedBox(
                            height: 15,
                          ),
                          slideData(),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: bottomNavigation(
                pageController,
                navController,
              ),
            )
          ],
        ),
      );
    });
  }
}
