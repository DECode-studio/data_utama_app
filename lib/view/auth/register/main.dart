import 'package:data_utama_app/style/text.dart';
import 'package:data_utama_app/view/auth/register/widgets/form.dart';
import 'package:data_utama_app/view/auth/register/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/user_controller.dart';

class registerPage extends StatefulWidget {
  registerPage({Key? key}) : super(key: key);

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  final userController = Get.put(UserController());

  @override
  void dispose() {
    super.dispose();

    userController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      formPage(userController),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
