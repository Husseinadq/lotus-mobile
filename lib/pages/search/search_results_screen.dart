import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/product_controller.dart';
import 'package:lotus/controller/user_controller.dart';
import 'package:lotus/pages/search/search_product_card.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<ProductController>().getAllProducts();
    return Scaffold(
        body: Container(
          height: Dimensions.screenHeight,
          child: Column(
            children: [
              Container(
                height: Dimensions.height100,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: IconButton(
                                onPressed: () {},
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
                                    Expanded(child: SizedBox())
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
              ),
              SingleChildScrollView(
                child: Container(
                  height: Dimensions.screenHeight - Dimensions.height100,
                  width: Dimensions.screenWidth,
                  child: Column(
                    children: [
                      Container(
                          height: Dimensions.height60,
                          color: AppColors.primary,
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.lightergrey,
                                  ),
                                  height: Dimensions.height45,
                                  // width: Dimensions.width100,
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "Price",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(right: 10),
                                          child:
                                              Icon(Icons.keyboard_arrow_down))
                                    ],
                                  ),
                                )),
                          )),
                      Divider(),
                      Expanded(
                        child: Container(
                          color: AppColors.primary,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 3 / 5),
                            itemCount: 10,
                            itemBuilder: (context, index) =>
                                SearchProductCard(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: 200,
          height: 35,
          decoration: BoxDecoration(
              color: AppColors.secondry,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Text(
                        "Sort",
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.swap_vert,
                        color: AppColors.primary,
                      )
                    ],
                  ),
                ),
                VerticalDivider(color: AppColors.primary),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.filter_alt,
                        color: AppColors.primary,
                        size: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
