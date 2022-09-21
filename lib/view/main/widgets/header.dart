import 'package:data_utama_app/style/color.dart';
import 'package:data_utama_app/widgets/assets.dart';
import 'package:flutter/material.dart';

import '../../../style/clip.dart';
import '../../../style/text.dart';

Widget headerPage() => Container(
      height: 200,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: 140,
                color: orange,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 137,
              child: Column(
                children: [
                  imageLogo(100, 100),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Data Utama",
                    style: navText,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
