// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print

import 'package:cityon/utils/colors/collors.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    this.height = 80.0,
    this.width = 100.0,
    super.key,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Collors.white,
      ),
      height: height!,
      width: double.infinity,
      child: PageView(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2.0, right: 10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Collors.white,
                    side: BorderSide(
                      color: Collors.green,
                      width: 1.5,
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    'ANUNCIAR',
                    style: TextStyle(
                      color: Collors.green,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/img/default_banner.png',
                fit: BoxFit.fill,
                width: width!,
              ),
            ],
          ),
          Image.asset(
            'assets/img/mechanic_banner.png',
            fit: BoxFit.fill,
            width: width!,
          ),
        ],
      ),
    );
  }
}