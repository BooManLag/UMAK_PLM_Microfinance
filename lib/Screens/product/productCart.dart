import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'productTotal.dart';

class AddToCart{
  String name = '';
  String image = '';
  double price = 0.0;

  static List<String> items = [];
  static List<String> images = [];
  static List<double> prices = [];
}

class GoToCart extends StatefulWidget {
  const GoToCart({Key? key}) : super(key: key);

  @override
  State<GoToCart> createState() => _GoToCartState();
}

class _GoToCartState extends State<GoToCart> {
  double total = AddToCart.prices.sum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F83D6),
      appBar: AppBar(
        title: Text('Grocery List'),
        centerTitle: true,
        elevation: 0.0,
        bottomOpacity: 0.0,
        backgroundColor: Color(0xFF2F83D6),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: (){
            setState(() {
              total = AddToCart.prices.sum;
            });
          },
          child: Padding(
            padding: REdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: AddToCart.items.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding:  REdgeInsets.only(bottom: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                padding: REdgeInsets.all(5.0),
                                color: Colors.white,
                                height: 115.0.h,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            AddToCart.images[index],
                                            height: 80.0.h,
                                            width: 80.0.w,
                                          ),
                                          SizedBox(width: 10.w,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AddToCart.items[index],
                                                maxLines: 10,
                                                overflow: TextOverflow.visible,
                                                style: TextStyle(
                                                  fontSize: 18.0.sp,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.0,

                                                ),
                                              ),
                                              Text(
                                                '₱${AddToCart.prices[index]}',
                                                style: TextStyle(
                                                    fontSize: 16.0.sp,
                                                    fontWeight: FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xFFFBBB00),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            AddToCart.items.remove(AddToCart.items[index]);
                                            AddToCart.prices.remove(AddToCart.prices[index]);
                                            AddToCart.images.remove(AddToCart.images[index]);
                                          });
                                        },
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                  SizedBox(height: 20.0.h,),
                  Total(total: double.parse(total.toStringAsFixed(2)), type: false),
                  SizedBox(height: 20.0.h,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
