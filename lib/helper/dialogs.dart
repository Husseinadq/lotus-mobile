import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/colors.dart';

class Dialogs {
  static final Dialogs _singleton = Dialogs._internal();
  factory Dialogs() {
    return _singleton;
  }
  Dialogs._internal();

  static Future<bool> statucDialog(String title,String subTitle) async {
    return (await showDialog(
            // barrierColor: AppColors.grey,
            context: Get.overlayContext!,
            builder: (context) => AlertDialog(
                  content: Expanded(
                    child: Container(
                      height: 250,
                      // width: 100,
                      color: AppColors.primary,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: AppColors.secondry,
                                child: Icon(
                                  Icons.logout_rounded,
                                  color: AppColors.primary,
                                  size: 40,
                                ),
                              ),
                              Positioned(
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 15,
                                    child: Icon(
                                      Icons.done,
                                      color: AppColors.primary,
                                    ),
                                  ))
                            ],
                          )),
                          Container(
                            padding: EdgeInsets.only(top: 30, bottom: 20),
                            child: Text(title,
                              // "title!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            child: Text(subTitle,
                              // "You have successfully loged out!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: AppColors.grey),
                            ),
                            // ),
                            // GestureDetector(
                            //   onTap: () {
                            //     Get.toNamed(RouteHelper.getMainPage());
                            //   },
                            //   child: Container(
                            //     margin: EdgeInsets.only(top: 20),
                            //     padding: EdgeInsets.all(7),
                            //     decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(15),
                            //         color: AppColors.secondry),
                            //     child: Text(
                            //       "Continue Shopping",
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.bold,
                            //           fontSize: 20,
                            //           color: AppColors.primary),
                            //     ),
                            //   ),
                            // )
                          )
                        ],
                      ),
                    ),
                  ),
                ))) ??
        false;
  }
}
