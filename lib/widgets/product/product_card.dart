import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/floting_icon.dart';
import 'package:lotus/widgets/small_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        margin:
            EdgeInsets.only(left: Dimensions.width3, right: Dimensions.width3),
        padding:
            EdgeInsets.only(left: Dimensions.width2, right: Dimensions.width2),
        height: Dimensions.height250,
        width: Dimensions.width120,
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(Dimensions.radius15)),
        child: Column(children: [
          Stack(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Dimensions.height15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(Dimensions.radius5),
                          bottomRight: Radius.circular(Dimensions.radius5),
                          topLeft: Radius.circular(Dimensions.radius5),
                          topRight: Radius.circular(Dimensions.radius5))),
                  child: SmallText(
                    text: "must sell",
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Positioned(
                  top: 3,
                  child: FlotingIcon(
                    icon: FontAwesomeIcons.heart,
                    backgroundColor: Colors.black,
                    iconColor: Colors.grey,
                    size: Dimensions.size25,
                  ),
                ),
              ],
            ),
            Positioned(
              child: Container(
                height: Dimensions.height120,
                margin: EdgeInsets.only(
                    left: Dimensions.width5,
                    right: Dimensions.width5,
                    top: Dimensions.height10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/1.png"))),
              ),
            )
          ]),
          Column(
            children: [
              const Text(
                  "Flutter app and the product card and the product card and the product card",
                  maxLines: 2,
                  textDirection: TextDirection.ltr,
                  overflow: TextOverflow.ellipsis),
              SizedBox(
                height: Dimensions.height5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "ر.ي",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.font15),
                  ),
                  Text(
                    "4,949.00",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.font15),
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "خصم",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: Dimensions.font10),
                  ),
                  Text(
                    "%14",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: Dimensions.font10),
                  ),
                  Text(
                    "ر.ي",
                    style: TextStyle(fontSize: Dimensions.font10),
                  ),
                  Text(
                    "4,799.00",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.font10),
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height5,
              ),
              Row(
                children: [
                  Text(
                    "(641)",
                    style: TextStyle(fontSize: Dimensions.font10),
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(
                        fontSize: Dimensions.font10,
                        fontWeight: FontWeight.bold,
                        color: AppColors.third),
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.third,
                    size: Dimensions.size10,
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
