import 'package:data_utama_app/database/user_db.dart';
import 'package:data_utama_app/view/auth/login/main.dart';
import 'package:data_utama_app/view/main/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/user_model.dart';

class UserController extends GetxController {
  var txt_name = TextEditingController().obs;
  var txt_email = TextEditingController().obs;
  var txt_phone = TextEditingController().obs;
  var txt_password = TextEditingController().obs;
  var txt_confirm_password = TextEditingController().obs;

  var view_password = true.obs;
  var button_index = 0.obs;

  void loginUser() async {
    String email = txt_email.value.text;
    String password = txt_password.value.text;

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Auth Message !',
        'Data masih kosong!\nSilahkan isi semua Field',
      );
    } else {
      await UserDb.db.authUser(email, password).then((value) {
        if (value.isNotEmpty) {
          Get.snackbar(
            'Auth Message !',
            'Login berhasil',
          );

          Get.off(mainPage());
        } else {
          Get.snackbar(
            'Auth Message !',
            'Login gagal\nEmail atau password salah!\nSilahkan isi kembali atau mendaftar akun baru',
          );
        }
      });
    }
  }

  void registerUser() async {
    String name = txt_email.value.text;
    String email = txt_email.value.text;
    String phone = txt_phone.value.text;
    String password = txt_password.value.text;
    String confirm_password = txt_confirm_password.value.text;

    if (name.isEmpty ||
        email.isEmpty ||
        phone.isEmpty ||
        password.isEmpty ||
        confirm_password.isEmail ||
        button_index.value == 0) {
      Get.snackbar(
        'Auth Message !',
        'Data masih kosong!\nSilahkan isi semua Field',
      );
    } else {
      if (password != confirm_password) {
        Get.snackbar(
          'Auth Message !',
          'Password tidak sama!\nSilahkan isi kembali',
        );
      } else {
        var user = User(
          name: name,
          gender: button_index.value == 1 ? 'pria' : 'wanita',
          email: email,
          phone: phone,
          password: password,
        );

        UserDb.db.addUser(user);
        Get.to(loginPage());
      }
    }
  }

  void clear() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      txt_email.value.text = "";
      txt_email.value.text = "";
      txt_phone.value.text = "";
      txt_password.value.text = "";
      view_password.value = true;
      button_index.value = 0;
    });
  }
}
