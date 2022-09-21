import 'package:data_utama_app/controller/user_controller.dart';
import 'package:data_utama_app/style/color.dart';
import 'package:data_utama_app/style/text-box.dart';
import 'package:data_utama_app/style/text.dart';
import 'package:data_utama_app/view/auth/login/widgets/label.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget formPage(UserController userController) => Obx(() {
      return Column(
        children: [
          labelWidget(Icons.person, "Email"),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: userController.txt_email.value,
            keyboardType: TextInputType.emailAddress,
            decoration: textFieldStyle(''),
          ),
          const SizedBox(
            height: 30,
          ),
          labelWidget(Icons.lock, "Password"),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: userController.txt_password.value,
            keyboardType: TextInputType.text,
            obscureText: userController.view_password.value,
            decoration: passwordFieldStyle('', userController),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Spacer(),
              Text(
                'Lupa Password?',
                style: labelText_2,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                userController.loginUser();
              },
              child: Text(
                'MASUK',
                style: widgetText,
              ),
            ),
          ),
        ],
      );
    });
