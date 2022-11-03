import 'package:flutter/material.dart';
import '../module_model.dart';
import '../module_widget.dart';

class UnemployedList extends StatefulWidget {
  const UnemployedList({Key? key}) : super(key: key);

  @override
  State<UnemployedList> createState() => _UnemployedListState();
}

class _UnemployedListState extends State<UnemployedList> {
  static List<CategoryList> unemployed = [
    CategoryList(title: 'Coffee Production Level II program', company: 'TESDA', description: 'Coffee Production Level II is a joint training program with Nestlè Philippines Inc. (NPI), and has a duration of 176 hours or 25 days. It seeks to promote workers’ entrepreneurship and enhance competency standards in coffee production and other related training programs.', location: 'Manila', image: 'assets/company/tesda.png', category: 'Unemployed', link: 'https://www.pna.gov.ph/articles/1185795'),
    CategoryList(title: 'Ship\'s Catering Services Levels I,II & III Program', company: 'TESDA', description: 'Ships’ Catering Services cover practical cookery, food and personal hygiene, food storage, stock control, environmental protection and catering and health and safety. The course may take 50 to 160 hours of training depending on its specific level. ', location: 'Manila', image: 'assets/company/tesda.png', category: 'Unemployed', link: 'https://www.tesda.gov.ph/Tvi/Result?SearchCourse=Ship%E2%80%99s+Catering+&SearchIns=&SearchLoc='),
    CategoryList(title: 'Cash Grant to Displaced OFWs', company: 'TESDA', description: 'A cash assistance amounting to Php 20,000.00 given to active or non-active OWWA members who were: \n\n(1) Displaced by hostilities or wars/political conflicts, policy reforms or changes by host governments; \n\n(2) Victims of illegal recruitment or human trafficking or other distressful situations; \n\n(3) Distressed wards at the Migrant Workers and Overseas Filipinos Resource Centers who are due for repatriation; and \n\n(4) Repatriated OWWA-members who were employed by foreign employers which are beset with financial difficulties due to economic conditions.', location: 'Nationwide', image: 'assets/company/tesda.png', category: 'Unemployed', link: 'https://www.dole9portal.com/4251-ofws-benefit-from-owwas-balik-pinas-balik-hanapbuhay-program/'),
    CategoryList(title: 'TUPAD or Tulong Panghanapbuhay sa Ating Disadvantaged/Displaced Workers', company: 'DOLE', description: 'TUPAD is a community-based package of assistance that provides emergency employment for displaced workers, underemployed and seasonal workers, for a minimum period of 10 days, but not to exceed a maximum of 30 days, depending on the nature of work to be performed.', location: 'Nationwide', image: 'assets/company/Dole.png', category: 'Unemployed' , link:'dole.gov.ph/tupad-contents/' ),
    CategoryList(title: 'DOLE-OWWA-AKAP', company: 'DOLE-OWWA', description: 'DOLE-OWWA-AKAP is a program that aims to support Overseas Filipino Workers who temporarily or permanently lost their employment due to the COVID-19 pandemic by offering financial assistance.', location: 'Nationwide', image: 'assets/company/Owwa.png', category: 'Unemployed', link:'https://owwa.gov.ph/?page_id=4287'),
  ];

  static List<String> images = [
    'assets/unemployed/1.png',
    'assets/unemployed/2.jpg',
    'assets/unemployed/5.png',
    'assets/unemployed/3.png',
    'assets/unemployed/4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF2F83D6),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Programs for Unemployed',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2F83D6)
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
        child: Container(
          child: Center(
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                      itemCount: unemployed.length,
                        itemBuilder: (context,index){
                          return ModuleWidget(
                            photo: unemployed[index].image,
                            title: unemployed[index].title,
                            company: unemployed[index].company,
                            desc: unemployed[index].description,
                            location: unemployed[index].location,
                            category: unemployed[index].category,
                            link: unemployed[index].link,
                            secImg: images[index],
                          );
                        }
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
