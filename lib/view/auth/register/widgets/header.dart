import 'package:data_utama_app/style/color.dart';
import 'package:data_utama_app/style/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget headerPage() => Container(
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Icon(
                Icons.arrow_back,
                color: black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'PENDAFTARAN',
              style: navText,
            ),
          ),
        ],
      ),
    );
