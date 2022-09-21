import 'package:data_utama_app/controller/user_controller.dart';
import 'package:data_utama_app/style/color.dart';
import 'package:data_utama_app/style/text.dart';
import 'package:flutter/material.dart';

Widget radioButton(
        int butIndex, int index, String text, UserController userController) =>
    GestureDetector(
      onTap: () {
        userController.button_index.value = butIndex;
      },
      child: Row(
        children: [
          Icon(
            butIndex == index
                ? Icons.radio_button_checked
                : Icons.radio_button_off,
            color: black,
            size: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: widgetText_3,
          ),
        ],
      ),
    );
