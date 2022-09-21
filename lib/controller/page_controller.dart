import 'package:get/get.dart';

class PagesController extends GetxController {
  var navIndex = 0.obs;

  void changeIndex(int index) {
    navIndex.value = index;
  }
}
