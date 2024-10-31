import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                try {
                  UserCredential userCredential =
                      await loginController.signInWithGoogle();
                  if (userCredential.user != null) {
                    // Menampilkan snackbar jika login berhasil
                    Get.snackbar(
                      "Login Berhasil",
                      "Selamat datang ${userCredential.user!.displayName}",
                      snackPosition: SnackPosition.BOTTOM,
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.green,
                      colorText: Colors.white,
                    );
                  }
                } catch (error) {
                  // Menampilkan snackbar jika terjadi kesalahan
                  Get.snackbar(
                    "Login Gagal",
                    "Terjadi kesalahan: $error",
                    snackPosition: SnackPosition.BOTTOM,
                    duration: Duration(seconds: 3),
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                }
              },
              child: Text("login"))),
    );
  }
}
