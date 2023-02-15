// ignore_for_file: avoid_unnecessary_containers

import 'package:cityon/utils/colors/collors.dart';
import 'package:cityon/widgets/carousel/carousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeAppBar = MediaQuery.of(context).size.height * 0.15;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(sizeAppBar),
        child: _appBar(context),
      ),
      body: SingleChildScrollView(
        child: _body(context),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 40.0,
        right: 10.0,
        bottom: 10.0,
        left: 10.0,
      ),
      decoration: BoxDecoration(
        color: Collors.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/logo.png',
            fit: BoxFit.contain,
            width: 80.0,
          ),
          const CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/img/avatar.png'),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    var sizeAppBar = MediaQuery.of(context).size.height * 0.15;
    var size = sizeAppBar + MediaQuery.of(context).size.height * 0.10;
    return Column(
      children: [
        Carousel(
          height: size,
          width: MediaQuery.of(context).size.width,
        ),
      ],
    );
  }
}
