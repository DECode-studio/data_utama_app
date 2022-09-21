import 'package:data_utama_app/controller/user_controller.dart';
import 'package:data_utama_app/view/auth/login/widgets/form.dart';
import 'package:data_utama_app/widgets/assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'widgets/footer.dart';
import 'widgets/header.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final userController = Get.put(UserController());

  @override
  void initState() {
    super.initState();

    if (defaultTargetPlatform == TargetPlatform.android) {
      SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

      // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //     systemNavigationBarColor: white,
      //     systemNavigationBarIconBrightness: Brightness.dark));

      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    }

    userController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              headerPage(),
              const SizedBox(
                height: 100,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    formPage(userController),
                    const SizedBox(
                      height: 50,
                    ),
                    footerPage(userController),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
