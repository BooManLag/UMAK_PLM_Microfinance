import 'package:flutter/material.dart';
import 'productItems.dart';
import 'productTotal.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  static List<ProductItems> mainProductList = [
    ProductItems(productName: 'test 1', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 2', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 3', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 4', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 5', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 1', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 2', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 3', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 4', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductItems(productName: 'test 5', image: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
  ];

  List<ProductItems> displayList = List.from(mainProductList);

  void updateList(String value){
    setState(() {
      displayList = mainProductList.where((element) => element.productName!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[600],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0,30.0,10.0,10.0),
        child: Column(
          children: [
            Center(
              child: Text(
                'Product List',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            TextField(
              onChanged: (value) => updateList(value),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Example: Canned Sardines',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Expanded(
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              itemCount: displayList.length,
                              itemBuilder: (context,index){
                                return ProductItems(
                                  productName: displayList[index].productName,
                                  image: displayList[index].image,
                                  price: displayList[index].price,
                                );
                              }
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ),
            SizedBox(height: 10.0,),
            Total(total: 100.12),
          ],
        ),
      ),
    );
  }
}
