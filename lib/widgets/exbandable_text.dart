// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool isHidden = true;
  double textHeight = Dimensions.height120;

  @override
  void initState() {
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              size: Dimensions.font15,
              height: 1.5,
            )
          : Column(
              children: [
                SmallText(
                    text: isHidden
                        ? (firstHalf + '...')
                        : (firstHalf + secondHalf),
                    size: Dimensions.font15,
                    height: 1.5),
                InkWell(
                  onTap: (() {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  }),
                  child: Row(
                    children: [
                      SmallText(
                        text: isHidden ? 'Show more' : "Show less",
                        color: AppColors.third,
                      ),
                      Icon(
                        isHidden ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                        color: AppColors.third,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
