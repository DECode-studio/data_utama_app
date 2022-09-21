import 'package:data_utama_app/controller/user_controller.dart';
import 'package:data_utama_app/style/text.dart';
import 'package:data_utama_app/view/auth/register/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget footerPage(UserController userController) => Column(
      children: [
        Text(
          'Anda anggota baru?',
          style: labelText,
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            Get.to(
              registerPage(),
            );

            userController.clear();
          },
          child: Text(
            'DAFTAR DISINI',
            style: widgetText_2,
          ),
        ),
      ],
    );
