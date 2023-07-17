// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';

import 'package:lotus/utils/colors.dart';

class CarouselImages extends StatelessWidget {
  double size;
  CarouselImages({
    Key? key,
    required this.size,
  }) : super(key: key);

  List<String> urls = [
    'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg',
    'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg',
    'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg',
    'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'
  ];
  List<Widget> stringsToWidgets(List<String>? ImagesUrls) {
    List<Widget> images = [];
    for (var item in ImagesUrls!) {
      images.add(Image.network(
        item,
        fit: BoxFit.fill,
      ));
    }
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: size,
      child: Carousel(
        images: stringsToWidgets(urls),
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
