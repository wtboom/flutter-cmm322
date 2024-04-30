import 'package:binny_application/pages/homepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final deviceStorage = GetStorage();

  //Call from main.dart an app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //Funtion to show Relevant Screen
  screenRedirect() async {
    //Debug
    if (kDebugMode) {
      print("====================================================");
      print("Go to HomePage");
    }

    //local storage
    Get.offAll(() => HomePage());
  }
}
