// ignore_for_file: sized_box_for_whitespace

import 'package:cityon/utils/colors/collors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    required this.category,
    required this.name,
    this.reviews = 5.0,
    this.stringLogo = '',
    this.verifiedAccount = false,
    this.width = double.maxFinite,
    super.key,
  });

  final String name;
  final String category;
  final String? stringLogo;
  final double? reviews;
  final bool? verifiedAccount;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: Collors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: width!,
      child: Column(
        children: [
          ListTile(
            leading: Builder(
              builder: ((context) {
                if (stringLogo!.isNotEmpty) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Collors.greyLight),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      backgroundImage: AssetImage(stringLogo!),
                    ),
                  );
                }
                return CircleAvatar(
                  backgroundColor: Collors.purpleAccent,
                  child: Icon(
                    Icons.apartment,
                    color: Collors.purple,
                  ),
                );
              }),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        category,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Collors.greyLight,
                        ),
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: reviews!,
                      minRating: reviews!,
                      allowHalfRating: false,
                      unratedColor: Colors.amber.withAlpha(50),
                      itemCount: 5,
                      itemSize: 17.0,
                      //itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) =>
                          const Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: (rating) {},
                      updateOnDrag: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            width: double.maxFinite,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Collors.blueMediumAccent,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  'Ver perfil da empresa',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Collors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
