import 'package:flutter/material.dart';

class ServiceCategory extends StatelessWidget {
  const ServiceCategory({
    required this.title,
    required this.icon,
    this.color = Colors.white,
    this.borderColor = Colors.blue,
    this.firstItem = false,
    this.lastItem = false,
    super.key,
  });

  final String title;
  final Icon icon;
  final Color? color;
  final Color? borderColor;
  final bool? firstItem;
  final bool? lastItem;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (firstItem!) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
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
                  padding:
                      const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                  child: Text(
                    title.length > 10 ? '${title.substring(0, 9)}...' : title,
                  ),
                ),
              ],
            ),
          );
        }
        if (lastItem!) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
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
                  padding:
                      const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                  child: Text(
                    title.length > 10 ? '${title.substring(0, 9)}...' : title,
                  ),
                ),
              ],
            ),
          );
        }
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
      },
    );
  }
}
