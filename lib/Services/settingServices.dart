import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPreferences;

  RxInt counter = 0.obs;

  Future<SettingServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    // ?? is  if coutner = null (??) counter = 0
    counter.value = sharedPreferences.getInt("counter") ?? 0;

    return this;
  }

  increase() {
    counter.value++;
    //here we are saving the value inside the sharedPref
    sharedPreferences.setInt("counter", counter.value);
  }
}
