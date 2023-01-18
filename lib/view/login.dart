// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middle_ware/Services/settingServices.dart';

class Login extends GetView<SettingServices> {
  const Login({super.key});
  // settingServices _settingServices  = Get.find(); //or we ues GetView==>(controler) insted of statelessWidet

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  controller.sharedPreferences.setString("role", "user");
                  Get.offNamed("/user");
                },
                child: Text("Login user"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  controller.sharedPreferences.setString("role", "admin");
                  Get.offNamed("/admin");
                },
                child: Text("Login admin"),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () async {
              controller.sharedPreferences.setString("role", "super");
              Get.offNamed("/super");
            },
            child: Text("Login super"),
          ),
        ],
      ),
    );
  }
}
