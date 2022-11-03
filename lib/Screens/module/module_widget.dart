import 'package:flutter/material.dart';

class ModuleWidget extends StatelessWidget {
  const ModuleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black87)
            ),
            height: 170,
            width: 170,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.black,
                  ),
                  SizedBox(width: 7.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Coffee Production Level II program'),
                      Text('TESDA'),
                      Expanded(
                          child: Text(
                              'Coffee Production Level II is a joint training program with Nestlè Philippines Inc. (NPI), and has a duration of 176 hours or 25 days. It seeks to promote workers’ entrepreneurship and enhance competency standards in coffee production and other related training programs.',
                          )
                      ),
                      Text('data'),
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
