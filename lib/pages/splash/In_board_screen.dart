import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

class InBoardScreen extends StatelessWidget {
  const InBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
          height: Dimensions.screenHeight,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/slide3.png",
                  ),
                  Container(
                    child: Text(
                      "LOTUS SHOPE",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 30, right: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: AppColors.secondry),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Get.toNamed(RouteHelper.getLogin());
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppColors.secondry),
                        )),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: AppColors.secondry),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Get.toNamed(RouteHelper.getSignUp());
                        },
                        child: Text(
                          'Sing Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppColors.secondry),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              )
            ],
          )),
    );
  }
}
