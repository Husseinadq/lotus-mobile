import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class BackAppBar extends StatelessWidget {
  const BackAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "LOTUS",
                      style: TextStyle(
                          color: AppColors.secondry,
                          fontWeight: FontWeight.w600,
                          fontSize: 25),
                    ),
                  )
                ],
              )),
          Expanded(
            flex: 1,
            child: Container(
              width: Dimensions.screenWidth,
              color: AppColors.lightergrey,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      // width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.primary),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search),
                          ),
                          Expanded(
                              child: Text(
                            "What are you looking for ?",
                            style: TextStyle(color: AppColors.grey),
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
