import 'package:data_utama_app/controller/user_controller.dart';
import 'package:flutter/material.dart';

import 'color.dart';

double borderRadius = 10;
var view = false;
// var args = Get.arguments;

InputDecoration textFieldStyle(String hint) => InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: grey,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: grey,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: grey,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
    );

InputDecoration passwordFieldStyle(
        String hint, UserController userController) =>
    InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: grey,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: grey,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: grey,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          userController.view_password.value
              ? Icons.visibility
              : Icons.visibility_off,
          color: Colors.black,
        ),
        onPressed: () {
          userController.view_password.value =
              !userController.view_password.value;
        },
      ),
    );
