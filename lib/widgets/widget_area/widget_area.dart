// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:cityon/utils/colors/collors.dart';
import 'package:flutter/material.dart';

class WidgetArea extends StatelessWidget {
  const WidgetArea({
    required this.child,
    this.padding,
    required this.title,
    super.key,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // padding: padding ?? const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20),
            child: Text(
              title,
              style: TextStyle(
                color: Collors.greyDark,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: padding ?? const EdgeInsets.all(0.0),
            child: child,
          ),
        ],
      ),
    );
  }
}
