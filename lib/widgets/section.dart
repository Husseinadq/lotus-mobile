import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/popular_product_controller.dart';
import 'package:lotus/controller/product_controller.dart';
import 'package:lotus/models/product_model.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

import '../pages/product/product_card.dart';

class Section extends StatelessWidget {
  String title;
  List<Product> items;
  Section({super.key, required this.title ,required this.items} );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.sectionHeight,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              height: Dimensions.height50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: AppColors.secondry,
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: Dimensions.height30,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.secondry)),
                    child: Text('Show All'),
                  )
                ],
              )),
          Container(
            height: Dimensions.height300,
            child: ListView.builder(
                  itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return ProductCard(product: items[index],);
                    }))),

        ],
      ),
    );
  }
}
