import 'package:data_utama_app/view/splash/main.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

void main() => runApp(DataUtamaApp());

class DataUtamaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Data Utama App',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
