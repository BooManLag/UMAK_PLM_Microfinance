import 'package:flutter/material.dart';

class ModuleContent extends StatelessWidget {
  final String title;
  final String image;
  final String desc;
  final String location;
  final String category;
  final String link;

  ModuleContent({required this.title, required this.image, required this.desc, required this.location, required this.category, required this.link,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF2F83D6),
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Apportunity',
          style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0,
              color: Colors.white
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 40.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0,10.0,15.0,20.0),
                    child: Column(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.grey[800]
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10,),
                        Image.asset(
                          image,
                          height: 220,
                          width: 400,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          desc,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: Colors.grey[800]
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0,10.0,15.0,10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xFF2F83D6),
                            ),
                            SizedBox(width: 10.0,),
                            Text(
                              'Location: ' + location,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  color: Colors.grey[800]
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.ios_share_rounded,
                          color: Color(0xFFFBBB00),
                        ),
                      ],
                    ),
                  )
                ),
                SizedBox(height: 15,),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15.0,10.0,15.0,10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Color(0xFF2F83D6),
                              ),
                              SizedBox(width: 10.0,),
                              Text(
                                'Demographic: ' + category,
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    color: Colors.grey[800]
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                ),
                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0,10.0,15.0,10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.link,
                            color: Color(0xFF2F83D6)
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Container(
                              width: 300,
                              child: Text(
                                link,
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    color: Colors.grey[800]
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}