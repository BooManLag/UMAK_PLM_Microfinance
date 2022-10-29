import 'package:flutter/material.dart';
import '../../Lists/product.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<ProductList> products = [
    ProductList(product: 'asda', photo: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductList(product: 'asdasdadsa', photo: 'http://cdn.shopify.com/s/files/1/0590/9787/4610/products/LUCKY-ME-PANCIT-CANTON-CALAMANSI-FLAVOR.jpg?v=1651172393', price: 1.10),
    ProductList(product: 'asdasdaasa', photo: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductList(product: 'asda', photo: 'http://cdn.shopify.com/s/files/1/0590/9787/4610/products/LUCKY-ME-PANCIT-CANTON-CALAMANSI-FLAVOR.jpg?v=1651172393', price: 1.10),
    ProductList(product: 'asda', photo: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductList(product: 'asda', photo: 'http://cdn.shopify.com/s/files/1/0590/9787/4610/products/LUCKY-ME-PANCIT-CANTON-CALAMANSI-FLAVOR.jpg?v=1651172393', price: 1.10),
    ProductList(product: 'asda', photo: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductList(product: 'asda', photo: 'http://cdn.shopify.com/s/files/1/0590/9787/4610/products/LUCKY-ME-PANCIT-CANTON-CALAMANSI-FLAVOR.jpg?v=1651172393', price: 1.10),
    ProductList(product: 'asda', photo: 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', price: 1.10),
    ProductList(product: 'asda', photo: 'http://cdn.shopify.com/s/files/1/0590/9787/4610/products/LUCKY-ME-PANCIT-CANTON-CALAMANSI-FLAVOR.jpg?v=1651172393', price: 1.10),
  ];

  Widget productListTemplate(product){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Image.network(
                product.photo,
                height: 75.0,
                width: 75.0,
              ),
            ),
            SizedBox(width: 20.0,),
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.product,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    '₱${product.price}',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Row(
                children: [
                  Icon(
                      Icons.add_shopping_cart
                  ),
                  SizedBox(width: 2.0,),
                  InkWell(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: (){

                    },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products.map((product) => productListTemplate(product)).toList(),
    );
  }
}
