import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:lotus/pages/home/product_page_pody.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';
import 'package:lotus/widgets/small_text.dart';

class MainShopPage extends StatefulWidget {
  const MainShopPage({super.key});

  @override
  State<MainShopPage> createState() => _MainShopPageState();
}

class _MainShopPageState extends State<MainShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.height45),
            padding: EdgeInsets.only(
                left: Dimensions.width15, right: Dimensions.width10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        BigText(
                          text: 'Yemen',
                          color: AppColors.thirdAccent,
                          size: Dimensions.font30,
                        ),
                        Row(children: [
                          SmallText(
                            text: 'Sanaa',
                            color: AppColors.secondryAccent,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ])
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.third),
                      child: Icon(
                        Icons.search,
                        color: AppColors.primary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: ProductPagePody())),
        ],
      ),
    );
  }
}
