import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/user_controller.dart';
import 'package:lotus/models/simple_model.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/models/state_model.dart';

class BottomSheets {
  static final BottomSheets _singleton = BottomSheets._internal();
  factory BottomSheets() {
    return _singleton;
  }
  BottomSheets._internal();

//this bottom sheet receive list of simple model {id, name} and return id of selected item when selected
  static Future<bool> settingBottomeSheet(
      String title, List<SimpleModel> items) async {
    print("sheet");
    return (await showModalBottomSheet(
            // barrierColor: AppColors.grey,
            context: Get.overlayContext!,
            backgroundColor: AppColors.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            builder: ((context) => Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(25)),
                    // height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 7),
                          height: 5,
                          width: 50,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              color: AppColors.secondry,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(20),
                            child: ListView.builder(
                                itemCount: items.length,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                        onTap: () => Get.find<UserController>()
                                            .setSettingState(items[index].id!),
                                        child: _textAndselected(
                                            items[index].name.toString(),
                                            false))),
                          ),
                        ),
                      ],
                    ),
                  ),
                )))) ??
        false;
  }

// this widget is simple it is the items in the bottom sheet
  static Widget _textAndselected(String text, bool isSelected) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          // color: AppColors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
              isSelected == true
                  ? CircleAvatar(
                      radius: 10,
                      backgroundColor: AppColors.secondry,
                      child: Icon(
                        Icons.done,
                        size: 12,
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, border: Border.all(width: 1)),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: AppColors.primary,
                      ),
                    )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
