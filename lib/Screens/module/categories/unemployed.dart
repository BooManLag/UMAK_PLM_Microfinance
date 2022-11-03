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
    CategoryList(title: 'Coffee Production Level II program', company: 'TESDA', description: 'Coffee Production Level II is a joint training program with Nestlè Philippines Inc. (NPI), and has a duration of 176 hours or 25 days. It seeks to promote workers’ entrepreneurship and enhance competency standards in coffee production and other related training programs.', location: 'Manila', image: 'assets/company/tesda.png', category: 'Unemployed'),
    CategoryList(title: 'Ship\'s Catering Services Levels I,II & III Program', company: 'TESDA', description: 'Ships’ Catering Services cover practical cookery, food and personal hygiene, food storage, stock control, environmental protection and catering and health and safety. The course may take 50 to 160 hours of training depending on its specific level. ', location: 'Manila', image: 'assets/company/tesda.png', category: 'Unemployed'),
    CategoryList(title: 'Performing Arts (Song) National Certification Level II', company: 'TESDA', description: 'Performing Arts (Song) NC II is a short training course that takes a minimum of 271 hours to complete and allows graduates to find employment in performing arts singing field.', location: 'Manila', image: 'assets/company/tesda.png', category: 'Unemployed'),
    CategoryList(title: 'TUPAD or Tulong Panghanapbuhay sa Ating Disadvantaged/Displaced Workers', company: 'DOLE', description: 'TUPAD is a community-based package of assistance that provides emergency employment for displaced workers, underemployed and seasonal workers, for a minimum period of 10 days, but not to exceed a maximum of 30 days, depending on the nature of work to be performed.', location: 'Nationwide', image: 'assets/company/Dole.png', category: 'Unemployed'),
    CategoryList(title: 'DOLE-OWWA-AKAP', company: 'DOLE-OWWA', description: 'DOLE-OWWA-AKAP is a program that aims to support Overseas Filipino Workers who temporarily or permanently lost their employment due to the COVID-19 pandemic by offering financial assistance.', location: 'Nationwide', image: 'assets/company/Owwa.png', category: 'Unemployed'),
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
