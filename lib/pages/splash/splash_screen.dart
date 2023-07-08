import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 3000), () {
      Get.toNamed(RouteHelper.getInBoard());
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
