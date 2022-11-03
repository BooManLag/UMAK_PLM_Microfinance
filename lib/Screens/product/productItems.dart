import 'package:flutter/material.dart';
import 'productCart.dart';

class ProductItems extends StatelessWidget {
  final String productName;
  final String image;
  final double price;

  ProductItems({required this.productName,required this.image,required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          padding: EdgeInsets.all(5.0),
          color: Color(0xFFEEEEEE),
          height: 115.0,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      image,
                      height: 80.0,
                      width: 80.0,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          maxLines: 10,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                            fontFamily: 'Inter',
                          ),
                        ),
                        Text(
                          '₱${price}',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
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
                    AddToCart.items.add(productName);
                    AddToCart.images.add(image);
                    AddToCart.prices.add(price);
                  },
                  child: Text(
                    "Add to Cart",
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
}
