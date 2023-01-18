// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middle_ware/Services/settingServices.dart';

class AuthMiddleWare extends GetMiddleware {
  SettingServices finding = Get.find();

  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route) {
    if (finding.sharedPreferences.getString("role") == "user")
      return RouteSettings(name: "/user");

    if (finding.sharedPreferences.getString("role") == "admin")
      return RouteSettings(name: "/admin");
  }
}


// if (sharedPref!.getString("id") != null)
    //   // return RouteSettings(name: "/home ");
    //   return sharedPref!.getString("id") == null
    //       ? RouteSettings(name: '/')
    //       : RouteSettings(name: '/home');