import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final currentIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    // Get.defaultDialog(

    //   title: 'Teachers Apps',
    //   middleText: "Hello world!",
    //   backgroundColor: Colors.grey,
    //   titleStyle: TextStyle(color: Colors.white),
    //   middleTextStyle: TextStyle(color: Colors.white),
    // );

    // Get.snackbar(
    //   "Teachers App",
    //   "Hello everyone",
    //   icon: Icon(Icons.person, color: Colors.white),
    //   snackPosition: SnackPosition.BOTTOM,
    //   backgroundColor: Colors.red,
    // );

    // Fluttertoast.showToast(
    //     msg: "You can find your best teacher",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0);

    // Get.dialog(
      
    //   Center(
    //     child: Container(
    //       // mainAxisAlignment: MainAxisAlignment.center,
    //       alignment: Alignment.center,
    //       width: 200,
    //       height: 200,
    //       decoration: BoxDecoration(
    //         color: Colors.red,
    //         borderRadius: BorderRadius.circular(10)
    //       ),
    //       // color: Colors.red,
    //       child: Text("Teachers App",
    //       style: TextStyle(fontSize: 20, color: Colors.white),),
    //     ),
    //   ),
    // );
  }

  @override
  void onClose() {}
}
