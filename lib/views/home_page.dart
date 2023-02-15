// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:cityon/utils/colors/collors.dart';
import 'package:cityon/widgets/carousel/carousel.dart';
import 'package:cityon/widgets/professionals_card/professionals_card.dart';
import 'package:cityon/widgets/service_category/service_category.dart';
import 'package:cityon/widgets/widget_area/widget_area.dart';
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
        right: 20.0,
        bottom: 10.0,
        left: 20.0,
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
        WidgetArea(
          title: Center(
            child: Text(
              'Pesquisa de Serviços',
              style: TextStyle(
                color: Collors.greyDark,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          padding: const EdgeInsets.all(20.0),
          child: _searchTextField(),
        ),
        WidgetArea(
          title: Text(
            'Serviços disponíveis',
            style: TextStyle(
              color: Collors.greyDark,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: const EdgeInsets.only(left: 20.0),
          child: _listServices(),
        ),
        WidgetArea(
          title: Text(
            'Os melhores profissionais',
            style: TextStyle(
              color: Collors.greyDark,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
          child: _listBestProfessionals(),
        ),
        WidgetArea(
          title: Text(
            'Empresas mais pesquisadas',
            style: TextStyle(
              color: Collors.greyDark,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: const EdgeInsets.all(20.0),
          child: _listBestCompanies(),
        ),
      ],
    );
  }

  Widget _searchTextField() {
    return SizedBox(
      height: 55.0,
      child: TextFormField(
        decoration: const InputDecoration(
          prefix: SizedBox(width: 20.0),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          hintText: 'Ex: eletricista, mecânico, pedreiro ...',
          hintStyle: TextStyle(
            height: 1.0,
            color: Colors.grey,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  Widget _listServices() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ServiceCategory(
            title: 'Barbearia',
            icon: Icon(
              Icons.cut_rounded,
              color: Collors.red,
            ),
            color: Collors.redAccent,
            borderColor: Collors.red,
          ),
          ServiceCategory(
            title: 'Eventos',
            icon: Icon(
              Icons.celebration_outlined,
              color: Collors.orange,
            ),
            color: Collors.orangeAccent,
            borderColor: Collors.orange,
          ),
          ServiceCategory(
            title: 'Contabilidade',
            icon: Icon(
              Icons.bar_chart_sharp,
              color: Collors.yellow,
            ),
            color: Collors.yellowAccent,
            borderColor: Collors.yellow,
          ),
          ServiceCategory(
            title: 'Jardinagem',
            icon: Icon(
              Icons.yard_outlined,
              color: Collors.green,
            ),
            color: Collors.greenAccent,
            borderColor: Collors.green,
          ),
          ServiceCategory(
            title: 'Mecânica',
            icon: Icon(
              Icons.handyman_outlined,
              color: Collors.blueBold,
            ),
            color: Collors.blueAccent,
            borderColor: Collors.blueBold,
          ),
          ServiceCategory(
            title: 'Limpeza',
            icon: Icon(
              Icons.cleaning_services,
              color: Collors.purple,
            ),
            color: Collors.purpleAccent,
            borderColor: Collors.purple,
          ),
          const ServiceCategory(
            title: 'Ver mais',
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Widget _listBestProfessionals() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Card(
            elevation: 0,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
              child: Text('Teste'),
            ),
          ),
          SizedBox(width: 10.0),
          Card(
            elevation: 0,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
              child: Text('Teste'),
            ),
          ),
          SizedBox(width: 10.0),
          Card(
            elevation: 0,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
              child: Text('Teste'),
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
    );
  }

  Widget _listBestCompanies() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.maxFinite,
            child: const Card(
              elevation: 0,
              color: Colors.white,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
                child: Text('Teste'),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            width: double.maxFinite,
            child: const Card(
              elevation: 0,
              color: Colors.white,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
                child: Text('Teste'),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            width: double.maxFinite,
            child: const Card(
              elevation: 0,
              color: Colors.white,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
                child: Text('Teste'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
