import 'package:data_utama_app/view/main/widgets/card.dart';
import 'package:flutter/material.dart';

Widget gridData() => Container(
      child: GridView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          for (var i = 0; i < 6; i++) cardData(i + 1),
        ],
      ),
    );
