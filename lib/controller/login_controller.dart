import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_fluttah/model/login_model.dart';
import 'package:pas_fluttah/routes.dart';

class LoginController extends GetxController {
  TextEditingController txtUsn = TextEditingController();
  TextEditingController txtPw = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<LoginModel>();

  // method hit API
  void login() async{
    if (txtUsn.text.toString().isEmpty || txtPw.text.toString().isEmpty) {
      Get.snackbar("error", "username & password harus terisi");
    }
    else {
      try {
        isLoading.value = true; // sbg tanda di pagenya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username" : txtUsn.text.toString(),
          "password" : txtPw.text.toString()
        });

        isLoading.value = false;
        if (response.statusCode == 200) {
          loginModel.value = loginModelFromJson(response.body);
          if (loginModel.value?.status == true) {
            Get.snackbar("berhasil", loginModel.value!.message.toString());
            Get.offAllNamed(Routes.mainMenu);
          }
          else {
            Get.snackbar("gagal", loginModel.value!.message.toString());
          }
        }
        else {
          Get.snackbar("gagal", "cek internet connection");
        }

      } catch (e) {
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}