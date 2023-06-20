import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/popular_product_controller.dart';
import '../models/product_model.dart';
import '../routes/routes_helper.dart';
import '../utils/app_constants.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'card_main_data.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currPageValue = 0.0;
  var _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         //########## Strat home pages slider  ##########//
        GetBuilder<PopularProductController>(builder: ((popularProducts) {
          return Container(
              child: Column(
            children: [
              //########## Strat pages slider  ##########//
              Container(
                height: Dimensions.pageView,
                child: popularProducts.isLoaded
                    ? PageView.builder(
                        controller: pageController,
                        itemCount: popularProducts.popularProductList.length,
                        itemBuilder: (context, index) {
                          return _bodyPageItem(
                              index, popularProducts.popularProductList[index]);
                        })
                    : Center(
                        child:
                            CircularProgressIndicator(color: AppColors.third),
                      ),
              ),
              //########## End pages slider ##########//
            ],
          ));
        })),
        //########## Strat dots under the slider ##########//
        GetBuilder<PopularProductController>(
          builder: ((popularProducts) {
            return DotsIndicator(
              dotsCount: popularProducts.popularProductList.isEmpty
                  ? 1
                  : popularProducts.popularProductList.length,
              position: _currPageValue,
              decorator: DotsDecorator(
                color: AppColors.thirdAccent,
                activeColor: AppColors.third,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 10.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            );
          }),
          //########## End dots under the slider ##########//

          //########## End home pages slider  ##########//

          //########## Strat Product Popular Section ##########//

          //########## End  Product Popular Section ##########//
        ),
      ],
    );
  }

  Widget _bodyPageItem(int index, ProductModel product) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          GestureDetector(
            onTap: (() {
              print(product.id);
              Get.toNamed(RouteHelper.getProductDetail(product.id!));
            }),
            child: Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width5, right: Dimensions.width5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColors.third,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          AppConstants.BASE_URL + "/uploads/" + product.img!))),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColors.primary,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 8.0,
                        offset: Offset(0, 5))
                  ]),
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.height15,
                      right: Dimensions.height15,
                      top: Dimensions.height15),
                  child: CardMainDate(title: product.name.toString())),
            ),
          )
        ],
      ),
    );
  }
}