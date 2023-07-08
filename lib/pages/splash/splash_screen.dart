import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';
import 'package:lotus/controller/user_controller.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<UserController>().initialized;
    Get.find<CartController>().initialized;
    Timer(const Duration(milliseconds: 1000), () {
      Get.toNamed(RouteHelper.getMainPage());
    });
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
          child: Column(
        children: [
          Image.asset(
            "assets/images/slide3.png",
          ),
          Container(
            child: Text(
              "LOTUS SHOPE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          )
        ],
      )),
    );
  }
}
