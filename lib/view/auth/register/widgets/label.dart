import 'package:data_utama_app/style/color.dart';
import 'package:data_utama_app/style/text.dart';
import 'package:flutter/material.dart';

Widget labelWidget(IconData icon, String text) => Row(
      children: [
        Icon(
          icon,
          color: black,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: labelText,
        )
      ],
    );
