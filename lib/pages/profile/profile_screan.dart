import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';
import 'package:lotus/widgets/small_text.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondry,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Center(child: Text("Profile", textAlign: TextAlign.center)),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: Dimensions.height75,
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15)),
                      child: Image.asset(
                        "assets/images/slide1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigText(text: "Hussein"),
                        SmallText(text: "husseinadq2@gmail.com")
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            profileSection(),
            profileSection(),
            profileSection(),
            profileSection(),
            profileSection(),
            profileSection(),
            profileSection(),
            profileSection(),
          ],
        )),
      ),
      // bottomNavigationBar: NavigationBarWidget(index: 3),
    );
  }

  Widget profileSection() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("title"),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.grey),
                borderRadius: BorderRadius.circular(Dimensions.radius20)),
            child: Column(children: [
              SizedBox(
                height: Dimensions.height10,
              ),
              profileItem(Icons.ac_unit_outlined, "hi"),
              profileItem(Icons.ac_unit_outlined, "hi"),
              SizedBox(
                height: Dimensions.height10,
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget profileItem(
    IconData icon,
    String title,
  ) {
    return Container(
      height: Dimensions.height50,
      // color: AppColors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: Dimensions.height40,
                width: Dimensions.height40,
                decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(Dimensions.radius10)),
                child: Icon(icon),
              ),
              Container(margin: EdgeInsets.only(left: 15), child: Text(title))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
