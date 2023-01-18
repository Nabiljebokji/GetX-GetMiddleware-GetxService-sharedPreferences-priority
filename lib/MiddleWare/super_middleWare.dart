import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middle_ware/Services/settingServices.dart';
import 'package:middle_ware/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SuperMiddleWare extends GetMiddleware {
  SettingServices finding = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (finding.sharedPreferences.getString("role") == "super")
      return RouteSettings(name: "/super");
  }
}
