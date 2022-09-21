import 'package:flutter/material.dart';

import '../../../../controller/user_controller.dart';
import 'radio-button.dart';

Widget genderRadio(UserController userController) => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        radioButton(
          1,
          userController.button_index.value,
          'PRIA',
          userController,
        ),
        const SizedBox(
          width: 20,
        ),
        radioButton(
          2,
          userController.button_index.value,
          'WANITA',
          userController,
        ),
      ],
    );
