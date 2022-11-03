import 'package:flutter/material.dart';
import 'categories/unemployed.dart';

class ModuleScreen extends StatefulWidget {
  const ModuleScreen({Key? key}) : super(key: key);

  @override
  State<ModuleScreen> createState() => _ModuleScreenState();
}

class _ModuleScreenState extends State<ModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F83D6),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0,50.0,10.0,30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Column(
                children: [
                  Center(
                    child: Text(
                        'Select your category',
                        style: TextStyle(
                          color: Color(0xFFFBBB00),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 24
                        ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Center(
                    child: Text(
                      'Which among these would best describe you?',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 5,),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        )
                    ),
                    height: 150,
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 5,),
                        Image.asset(
                          'assets/category/student.png',
                          height: 100,
                        ),
                        Text(
                            'Student',
                          style: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => UnemployedList()
                        )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        )
                    ),
                    height: 150,
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 5,),
                        Image.asset(
                          'assets/category/unemployed.png',
                          height: 100,
                        ),
                        Text(
                          'Unemployed',
                          style: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 5,),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        )
                    ),
                    height: 150,
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 5,),
                        Image.asset(
                          'assets/category/single.png',
                          height: 100,
                        ),
                        Text(
                          'Single Parent',
                          style: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        )
                    ),
                    height: 150,
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 5,),
                        Image.asset(
                          'assets/category/senior.png',
                          height: 100,
                        ),
                        Text(
                          'Senior Citizen',
                          style: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 5,),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        )
                    ),
                    height: 150,
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 5,),
                        Image.asset(
                          'assets/category/disability.png',
                          height: 100,
                        ),
                        Text(
                          'Person with \nDisability',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        )
                    ),
                    height: 150,
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 5,),
                        Image.asset(
                          'assets/category/other.png',
                          height: 100,
                        ),
                        Text(
                          'Others',
                          style: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
