// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middle_ware/Services/settingServices.dart';
import 'package:middle_ware/main.dart';

class supper extends GetView<SettingServices> {
  const supper({super.key});
  // settingServices _settingServices = Get.find(); //or we ues GetView==>(controler) insted of statelessWidet

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supper'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.sharedPreferences.clear();
                  Get.offNamed("/");
                },
                child: Text("Logout"),
              ),
            ],
          ),
          GetX<SettingServices>(
              builder: (GetxControllerr) => Column(
                    children: [
                      Text("${GetxControllerr.counter}"),
                      ElevatedButton(
                        onPressed: () {
                          GetxControllerr.increase();
                        },
                        child: Text("add"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          GetxControllerr.sharedPreferences.clear();
                        },
                        child: Text("Clear"),
                      ),
                    ],
                  )),
        ],
      ),
    );
  }
}
