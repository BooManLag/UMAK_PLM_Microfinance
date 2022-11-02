import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
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
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Grocery List'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: AddToCart.items.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            color: Colors.white,
                            height: 115.0,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        AddToCart.images[index],
                                        height: 80.0,
                                        width: 80.0,
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AddToCart.items[index],
                                            maxLines: 10,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.0,

                                            ),
                                          ),
                                          Text(
                                            '₱${AddToCart.prices[index]}',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.teal[800],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0),
                                      ),
                                    ),
                                    onPressed: () {
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
              SizedBox(height: 20.0,),
              Total(total: double.parse(total.toStringAsFixed(2)), type: false),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }
}
