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
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        height: Dimensions.height75,
                        decoration: BoxDecoration(
                            color: AppColors.lightgrey,
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius15)),
                        child: Image.asset(
                          "assets/images/slide1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hussein",
                              style: TextStyle(
                                  color: AppColors.secondry,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            SmallText(text: "husseinadq2@gmail.com")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height5,
            ),
            profileSection(),
            profileSettingSection(),
          ],
        )),
      ),
      // bottomNavigationBar: NavigationBarWidget(index: 3),
    );
  }

  Widget profileSection() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(""),
          // ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.grey),
                borderRadius: BorderRadius.circular(Dimensions.radius20)),
            child: Column(children: [
              SizedBox(
                height: Dimensions.height10,
              ),
              profileItem(Icons.person, "Personal Details"),
              profileItem(Icons.shopping_bag, "My Order"),
              profileItem(Icons.favorite, "My Wish List"),
              profileItem(Icons.local_shipping, "Shipping Address"),
              profileItem(Icons.shopping_cart, "My Cart"),
              profileItem(Icons.payment, "Payment"),
              SizedBox(
                height: Dimensions.height10,
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget profileSettingSection() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(""),
          // ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.grey),
                borderRadius: BorderRadius.circular(Dimensions.radius20)),
            child: Column(children: [
              SizedBox(
                height: Dimensions.height10,
              ),
              profileItem(Icons.settings, "Settings"),
              profileItem(Icons.shield, "Privacy Policy"),
              profileItem(Icons.language, "Language"),
              profileItem(Icons.notifications, "Notifications"),
              profileItem(Icons.help, "Help"),
              profileItem(Icons.logout, "Log Out"),
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
                    color: AppColors.lightgrey,
                    borderRadius: BorderRadius.circular(Dimensions.radius10)),
                child: Icon(icon),
              ),
              Container(
                  margin: EdgeInsets.only(left: 15), child: ItemText(title))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          )
        ],
      ),
    );
  }

  Widget ItemText(String title) {
    return Text(
      title,
      style: TextStyle(
          color: AppColors.secondry, fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}
