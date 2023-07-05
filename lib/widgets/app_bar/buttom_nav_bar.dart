// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:lotus/utils/app_constants.dart';

// import '../../utils/colors.dart';
// import '../../utils/dimensions.dart';

// class BottomNavBar extends StatefulWidget {
//   int pageNumber;
//   BottomNavBar({
//     Key? key,
//     required this.pageNumber,
//   }) : super(key: key);

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return CurvedNavigationBar(
//       height: Dimensions.height50,
//       onTap: (index) {
//         setState(() {
//           AppConstants.PAGENUMBER= index;
//         });

//         Get.parameters['pageNumber'] = index.toString();
//       },
//       index: widget.pageNumber,
//       items: [
//         Icon(
//           Icons.home,
//           size: 30,
//           color: AppColors.primary,
//         ),
//         Icon(
//           Icons.category,
//           size: 30,
//           color: AppColors.primary,
//         ),
//         Icon(
//           Icons.local_offer,
//           size: 30,
//           color: AppColors.primary,
//         ),
//         Icon(
//           Icons.person,
//           size: 30,
//           color: AppColors.primary,
//         ),
//         Icon(
//           Icons.shopping_cart,
//           size: 30,
//           color: AppColors.primary,
//         ),
//       ],
//       backgroundColor: AppColors.primary,
//       color: AppColors.secondry,
//       animationDuration: const Duration(milliseconds: 100),
//     );
//   }
// }
