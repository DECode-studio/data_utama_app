import 'package:data_utama_app/style/text.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/assets.dart';

Widget headerPage() => Column(
      children: [
        imageLogo(100, 100),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Data Utama",
          style: navText,
        )
      ],
    );
