// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

class CarouselImages extends StatelessWidget {
  double size;
  CarouselImages({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: size,
      child: Carousel(
        images: [
          Image.network(
            'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg',
            fit: BoxFit.fill,
          ),
          Image.network(
              'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          Image.network(
              'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          Image.network(
              'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          Image.network(
              'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        autoplayDuration: Duration(seconds: 4),
        dotColor: AppColors.secondryAccent,
        // dotBgColor: AppColors.secondry,
        dotIncreasedColor: AppColors.secondry,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.purple.withOpacity(0.0),

        // borderRadius: true,
      ),
    );
  }
}
