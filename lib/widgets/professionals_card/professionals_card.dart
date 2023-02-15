import 'package:cityon/widgets/service_category/service_category.dart';
import 'package:flutter/material.dart';

class ProfessionalsCard extends StatelessWidget {
  const ProfessionalsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        leading: ServiceCategory(title: '', icon: Icon(Icons.abc)),
      ),
    );
  }
}
