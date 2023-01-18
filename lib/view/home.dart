// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middle_ware/Services/settingServices.dart';
import 'package:middle_ware/main.dart';

class Home extends GetView<SettingServices> {
  const Home({super.key});
  // settingServices _settingServices  = Get.find(); //or we ues GetView==>(controler) insted of statelessWidet

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('user Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  controller.sharedPreferences.clear();
                  Get.offNamed("/");
                },
                child: Text("Sign out"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
