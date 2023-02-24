// ignore_for_file: avoid_unnecessary_containers

import 'package:cityon/utils/colors/collors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfessionalCard extends StatelessWidget {
  const ProfessionalCard({
    this.colorAvatar = Colors.blue,
    this.countReviews = 0,
    this.isLast = false,
    required this.name,
    this.reviews = 0.0,
    required this.serviceCategory,
    this.verifiedAccount = false,
    super.key,
  });

  final Color? colorAvatar;
  final int? countReviews;
  final bool? isLast;
  final String name;
  final double? reviews;
  final String serviceCategory;
  final bool? verifiedAccount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Collors.white,
      ),
      margin: isLast! == true
          ? const EdgeInsets.only(left: 20.0, right: 20.0)
          : const EdgeInsets.only(left: 20.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: ListTile(
          leading: Container(
            child: CircleAvatar(
              backgroundColor: colorAvatar!,
              child: Icon(
                Icons.person_outline_sharp,
                color: Collors.white,
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Builder(builder: (context) {
                if (verifiedAccount!) {
                  return Row(
                    children: [
                      const SizedBox(width: 5.0),
                      Icon(
                        Icons.verified,
                        color: Collors.green,
                        size: 20.0,
                      ),
                    ],
                  );
                }
                return const SizedBox();
              }),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Text(
                  serviceCategory,
                  style: const TextStyle(fontSize: 12.0),
                ),
              ),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: reviews!,
                    minRating: reviews!,
                    allowHalfRating: false,
                    unratedColor: Colors.amber.withAlpha(50),
                    itemCount: 5,
                    itemSize: 20.0,
                    //itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) =>
                        const Icon(Icons.star, color: Colors.amber),
                    onRatingUpdate: (rating) {},
                    updateOnDrag: false,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    '(${countReviews!})',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Collors.greyDark,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
