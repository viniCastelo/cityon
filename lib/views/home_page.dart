// ignore_for_file: avoid_unnecessary_containers

import 'package:cityon/utils/colors/collors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _appBar(BuildContext context) {
    var size = MediaQuery.of(context).size.height * 0.15;
    return Container(
      height: size,
      decoration: BoxDecoration(
        color: Collors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, right: 10.0, left: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/logo.png',
              fit: BoxFit.contain,
            ),
            const CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/img/avatar.png'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        _appBar(context),
      ],
    );
  }
}
