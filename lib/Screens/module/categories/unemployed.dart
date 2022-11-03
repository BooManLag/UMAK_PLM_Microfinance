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
    CategoryList(title: '', company: '', description: '', location: '', image: '', category: ''),
    CategoryList(title: '', company: '', description: '', location: '', image: '', category: ''),
    CategoryList(title: '', company: '', description: '', location: '', image: '', category: ''),
    CategoryList(title: '', company: '', description: '', location: '', image: '', category: ''),
    CategoryList(title: '', company: '', description: '', location: '', image: '', category: ''),
    CategoryList(title: '', company: '', description: '', location: '', image: '', category: ''),
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
