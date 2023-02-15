// ignore_for_file: avoid_unnecessary_containers

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
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: padding ?? const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          const SizedBox(height: 15.0),
          child,
        ],
      ),
    );
  }
}
