import 'package:flutter/material.dart';
import 'productList.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[600],
      body: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
            child: Column(
              children: [
                Text(
                  'Product List',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.white
                  ),
                ),
                Text(
                  'Search Bar Here',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),
                ),
                ProductListScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
