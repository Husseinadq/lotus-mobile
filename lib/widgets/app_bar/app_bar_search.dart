import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height40,
      padding: EdgeInsets.only(
          top: Dimensions.height5,
          bottom: Dimensions.height5,
          left: Dimensions.width5,
          right: Dimensions.width5),
      child: Container(
        child: TextField(
          style: TextStyle(
              color: AppColors.third, decorationColor: AppColors.third),
          controller: _searchController,
          cursorColor: AppColors.third,
          decoration: InputDecoration(
              iconColor: Colors.amber,
              hintText: "whate are you looking for",
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: AppColors.third,
              ),
              prefixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.green,
                  )),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                    width: 3.0, color: Colors.black, style: BorderStyle.none),
              )),
        ),
      ),
    );
  }
}
