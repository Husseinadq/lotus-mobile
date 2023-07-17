import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/widgets/app_bar/back_app_bar.dart';

import '../../controller/user_controller.dart';
import '../../utils/colors.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  final _editProfileDateFormKey = GlobalKey<FormState>();

  final TextEditingController _firstNameTextEditingController =
      TextEditingController();
  final TextEditingController _lastNameTextEditingController =
      TextEditingController();
  bool isEditing = false;

  @override
  void initState() {
    setup();
    super.initState();
  }

  Future<void> setup() async {
    _firstNameTextEditingController.text =
        await Get.find<UserController>().getUser.firstName;
    _lastNameTextEditingController.text =
        await Get.find<UserController>().getUser.lastName;
  }

  @override
  void dispose() {
    _firstNameTextEditingController.dispose();
    _lastNameTextEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        BackAppBar(),
        Container(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {
              setState(() {
                if (isEditing == true) {
                  isEditing = false;
                } else {
                  isEditing = true;
                }
              });
            },
            child: Text(
              isEditing == true ? 'cancel' : 'edit',
              style: TextStyle(
                  height: 1,
                  color: AppColors.secondry,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 75,
          decoration: BoxDecoration(
              color: AppColors.lightgrey,
              borderRadius: BorderRadius.circular(15)),
          child: Image.asset('assets/images/p1.png'),
        ),
        isEditing == true
            ? Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "Upload Image",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              )
            : SizedBox(
                height: 10,
              ),
        Container(
          padding: EdgeInsets.all(10),
          child: isEditing == true
              ? Form(
                  key: _editProfileDateFormKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),

                      ///start First name input
                      TextFormField(
                        controller: _firstNameTextEditingController,
                        autofocus: true,
                        cursorColor: AppColors.secondry,
                        style: TextStyle(
                            height: 1,
                            color: AppColors.secondry,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "The First Name is required";
                          }
                          return null;
                        }),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: AppColors.secondry),

                          labelText: 'First Name',
                          hintText: 'First Name',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.secondry, width: 2)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.grey,
                              width: 2.0,
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: AppColors.secondry,
                            ),
                          ),
                          // contentPadding: EdgeInsets.all(5),
                          hintStyle: TextStyle(
                              height: 1,
                              color: AppColors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),

                      ///end phone input
                      SizedBox(
                        height: 20,
                      ),

                      ///start phone input
                      TextFormField(
                        controller: _lastNameTextEditingController,
                        // initialValue: "Hussein",
                        style: TextStyle(
                            height: 1,
                            color: AppColors.secondry,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "The Last Name is required";
                          }
                          return null;
                        }),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: AppColors.secondry),

                          labelText: 'Last Name',
                          hintText: 'Last Name',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.secondry, width: 2)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.grey,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: AppColors.secondry,
                            ),
                          ),
                          // contentPadding: EdgeInsets.all(5),
                          hintStyle: TextStyle(
                              height: 1,
                              color: AppColors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),

                      ///end phone input
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: (() => Get.find<UserController>()
                            .editPersonalData(
                                _firstNameTextEditingController.text.toString(),
                                _lastNameTextEditingController.text
                                    .toString())),
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 20, right: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.secondry,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            'Save',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1,
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "First Name :",
                            style: TextStyle(
                                height: 1,
                                color: AppColors.secondry,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            "Last Name :",
                            style: TextStyle(
                                height: 1,
                                color: AppColors.secondry,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Hussein",
                            style: TextStyle(
                                height: 1,
                                color: AppColors.secondry,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            "Al-Mansori",
                            style: TextStyle(
                                height: 1,
                                color: AppColors.secondry,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        )
                      ],
                    )
                  ],
                ),
        )
      ]),
    );
  }
}
