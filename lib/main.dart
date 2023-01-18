// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middle_ware/MiddleWare/auth_middleWare.dart';
import 'package:middle_ware/MiddleWare/super_middleWare.dart';
import 'package:middle_ware/Services/settingServices.dart';
import 'package:middle_ware/view/admin.dart';
import 'package:middle_ware/view/home.dart';
import 'package:middle_ware/view/login.dart';
import 'package:middle_ware/view/super.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  //allways add this line if you want to ues async in main funk
  WidgetsFlutterBinding.ensureInitialized();
  await initStatus();
  runApp(MyApp());
}
////////////////////////////////////////////////////////////
//                   importanat
// Get Services is the same as Get Controller both of them has a Life cycle
// but Get Services has more benefets ...it is reachable by uesing GetView<ClassNameController> insted of stateless widgts
//             Getview is like ClassController controller = Get.Find();

Future initStatus() async {
  await Get.putAsync(() => SettingServices().init());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: "/", //default value is onlly ("/")
      getPages: [
        GetPage(
            name: "/",
            page: () => Login(),
            middlewares: [AuthMiddleWare(), SuperMiddleWare()]),
        GetPage(name: "/user", page: () => Home()),
        GetPage(name: "/admin", page: () => admin()),
        GetPage(name: "/super", page: () => supper()),
      ],
    );
  }
}
