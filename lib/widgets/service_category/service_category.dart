import 'package:cityon/utils/colors/collors.dart';
import 'package:flutter/material.dart';

class ServiceCategory extends StatelessWidget {
  const ServiceCategory({
    required this.title,
    required this.icon,
    this.color = Colors.white,
    this.borderColor = Colors.blue,
    super.key,
  });

  final String title;
  final Icon icon;
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            border: Border.all(
              color: borderColor!,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: color!,
            radius: 28.0,
            child: icon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
          child: Text(
            title.length > 10 ? '${title.substring(0, 9)}...' : title,
          ),
        ),
      ],
    );
  }
}
