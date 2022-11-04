import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'module_content.dart';

class ModuleWidget extends StatelessWidget {
  final String photo;
  final String title;
  final String company;
  final String desc;
  final String location;
  final String category;
  final String link;
  final String secImg;

  ModuleWidget({required this.photo,required this.title,required this.company,required this.desc,required this.location,required this.category, required this.link, required this.secImg});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => ModuleContent(
                  title: title,
                  image: secImg,
                  desc: desc,
                  location: location,
                  category: category,
                  link: link,
                )
            )
        );
      },
      child: Padding(
        padding: REdgeInsets.only(bottom: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.black87)
            ),
            height: 170.h,
            width: 170.w,
            child: Padding(
              padding: REdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    photo,
                    height: 150.h,
                    width: 100.w,
                  ),
                  SizedBox(width: 7.0.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 250.w,
                            child: Text(
                              title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: Colors.grey[800]
                              ),
                            ),
                          ),
                          Text(
                            company,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12.sp,
                                color: Colors.grey[800]
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 250.w,
                            child: Text(
                              desc,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 13.sp,
                                  color: Colors.grey[800]
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xFF2F83D6),
                              ),
                              Text(
                                location,
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 15.sp,
                                    color: Colors.grey[800],
                                  fontWeight: FontWeight.w400
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Color(0xFF2F83D6),
                              ),
                              Text(
                                category,
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 15.sp,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w400
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
