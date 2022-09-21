import 'package:data_utama_app/controller/user_controller.dart';
import 'package:data_utama_app/view/auth/register/widgets/gender-radio.dart';
import 'package:data_utama_app/view/auth/register/widgets/label.dart';
import 'package:flutter/material.dart';

import '../../../../style/color.dart';
import '../../../../style/text-box.dart';
import '../../../../style/text.dart';

Widget formPage(UserController userController) => Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        genderRadio(userController),
        const SizedBox(
          height: 30,
        ),
        labelWidget(Icons.person, "Nama Lengkap"),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: userController.txt_name.value,
          keyboardType: TextInputType.text,
          decoration: textFieldStyle(''),
        ),
        const SizedBox(
          height: 30,
        ),
        labelWidget(Icons.mail, "Email"),
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
        labelWidget(Icons.phone, "No HP / WA"),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: userController.txt_phone.value,
          keyboardType: TextInputType.phone,
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
          obscureText: userController.view_password.value,
          keyboardType: TextInputType.text,
          decoration: passwordFieldStyle('', userController),
        ),
        const SizedBox(
          height: 30,
        ),
        labelWidget(Icons.lock, "Ulangi Password"),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: userController.txt_confirm_password.value,
          obscureText: userController.view_password.value,
          keyboardType: TextInputType.text,
          decoration: passwordFieldStyle('', userController),
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
              userController.registerUser();
            },
            child: Text(
              'DAFTAR',
              style: widgetText,
            ),
          ),
        ),
      ],
    );
