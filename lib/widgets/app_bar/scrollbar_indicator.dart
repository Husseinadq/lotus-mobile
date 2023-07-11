import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

class ScrollbarIndicator extends StatefulWidget {

  ScrollbarIndicator({super.key});

  @override
  State<ScrollbarIndicator> createState() => _ScrollbarIndicatorState();
}

class _ScrollbarIndicatorState extends State<ScrollbarIndicator> {
  ScrollController scrollController = ScrollController();

double pixels = 0.0;

  @override
  void initState() {
    scrollController = ScrollController();
    
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
  
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ScrollIndicator(
      scrollController: scrollController,
      width: 50,
      height: 5,
      indicatorWidth: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
      indicatorDecoration: BoxDecoration(
          color: Colors.deepOrange, borderRadius: BorderRadius.circular(10)),
    );
  }
}
