// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// import 'package:lotus/utils/colors.dart';
// import 'package:lotus/utils/dimensions.dart';

// class MainCategoriesCard extends StatelessWidget {
//   final String title;
//   final bool? isSelected;
//   MainCategoriesCard({
//     Key? key,
//     required this.title,
//     required this.isSelected,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: Dimensions.mainCategorySectionHeight,
//       decoration: BoxDecoration(
//         color: isSelected == true ? AppColors.primary : AppColors.lightgrey,
//       ),
//       child: Center(
//           child: Padding(
//         padding: EdgeInsets.all(Dimensions.height10),
//         child: Text(
//           title,
//           maxLines: 2,
//           softWrap: true,
//         ),
//       )),
//     );
//   }
// }
