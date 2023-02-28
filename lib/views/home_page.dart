// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:cityon/utils/colors/collors.dart';
import 'package:cityon/widgets/carousel/carousel.dart';
import 'package:cityon/widgets/companies_card/company_card.dart';
import 'package:cityon/widgets/professionals_card/professional_card.dart';
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
      decoration: BoxDecoration(color: Collors.blue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 125.0,
            child: Image.asset(
              'assets/img/logo.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Collors.white,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: const CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage(
                'assets/img/avatar.png',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    var sizeAppBar = MediaQuery.of(context).size.height * 0.15;
    var size = sizeAppBar + MediaQuery.of(context).size.height * 0.25;
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Carousel(
            height: size,
            width: MediaQuery.of(context).size.width,
          ),
          WidgetArea(
            title: 'Pesquisa de Serviços',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _searchTextField(),
          ),
          WidgetArea(
            title: 'Serviços disponíveis',
            child: _listServices(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Divider(
              color: Collors.dividerColor,
              thickness: 1.8,
            ),
          ),
          WidgetArea(
            title: 'Os melhores profissionais',
            child: _listBestProfessionals(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Divider(
              color: Collors.dividerColor,
              thickness: 1.8,
            ),
          ),
          WidgetArea(
            title: 'Empresas mais pesquisadas',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _listBestCompanies(),
          ),
        ],
      ),
    );
  }

  Widget _searchTextField() {
    return SizedBox(
      height: 55.0,
      child: TextFormField(
        decoration: InputDecoration(
          prefix: const SizedBox(width: 20.0),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Collors.greyLight),
          ),
          hintText: 'Ex: eletricista, mecânico, pedreiro ...',
          hintStyle: const TextStyle(
            height: 1.0,
            color: Colors.grey,
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.mic),
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
            firstItem: true,
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
            lastItem: true,
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
        children: [
          const ProfessionalCard(
            countReviews: 219,
            name: 'Pedro Sebastião',
            reviews: 5.0,
            serviceCategory: 'Mecânico',
            verifiedAccount: true,
          ),
          ProfessionalCard(
            colorAvatar: Collors.red,
            countReviews: 138,
            name: 'Caio Oliveira',
            reviews: 5.0,
            serviceCategory: 'Cabeleireiro',
            verifiedAccount: true,
          ),
          ProfessionalCard(
            colorAvatar: Collors.yellow,
            countReviews: 102,
            name: 'Ruan Fabrício',
            reviews: 5.0,
            serviceCategory: 'Contabilidade',
            verifiedAccount: true,
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _listBestCompanies() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CompanyCard(
            name: 'Bitdata Tecnologia',
            category: 'Acessórios e informática',
            verifiedAccount: true,
            stringLogo: "assets/img/logo_empresa_00.png",
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Pão Caseiro',
            category: 'Panificadora',
            stringLogo: "assets/img/logo_empresa_01.png",
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'São José Artes',
            category: 'Gráfica',
            stringLogo: "assets/img/logo_empresa_02.png",
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Ribeirão Construções',
            category: 'Construção',
            stringLogo: "assets/img/logo_empresa_03.png",
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Empresa Teste',
            category: 'Teste',
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Empresa Teste',
            category: 'Teste',
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Empresa Teste',
            category: 'Teste',
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Empresa Teste',
            category: 'Teste',
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Empresa Teste',
            category: 'Teste',
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Empresa Teste',
            category: 'Teste',
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Empresa Teste',
            category: 'Teste',
            verifiedAccount: true,
          ),
          SizedBox(height: 20.0),
          CompanyCard(
            name: 'Empresa Teste',
            category: 'Teste',
            verifiedAccount: true,
          ),
        ],
      ),
    );
  }
}
