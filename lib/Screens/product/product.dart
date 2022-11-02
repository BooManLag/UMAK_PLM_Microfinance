import 'package:flutter/material.dart';
import 'package:untitled/Screens/product/productCart.dart';
import 'package:collection/collection.dart';
import 'productItems.dart';
import 'productTotal.dart';
import 'productCart.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  static List<ProductItems> mainProductList = [
    ProductItems(productName: 'Canned Sardines -\n555 Bonus Pack', image: 'assets/temp.webp', price: 17.25),
    ProductItems(productName: 'Canned Sardines -\nAtami', image: 'assets/temp.webp', price: 17.77),
    ProductItems(productName: 'Canned Sardines -\nFamily\'s Budget Pack', image: 'assets/temp.webp', price: 15.25),
    ProductItems(productName: 'Canned Sardines -\nHakone', image: 'assets/temp.webp', price: 13.4),
    ProductItems(productName: 'Canned Sardines -\nKing Cup', image: 'assets/temp.webp', price: 16.5),
    ProductItems(productName: 'Canned Sardines -\nLucky 7', image: 'assets/temp.webp', price: 17.25),
    ProductItems(productName: 'Canned Sardines -\nMariko', image: 'assets/temp.webp', price: 16.5),
    ProductItems(productName: 'Canned Sardines -\nSaba Phil. Sardines', image: 'assets/temp.webp', price: 17.25),
    ProductItems(productName: 'Canned Sardines -\nToyo', image: 'assets/temp.webp', price: 18.72),
    ProductItems(productName: 'Canned Sardines -\nSallenas', image: 'assets/temp.webp', price: 17),
    ProductItems(productName: 'Condensada -\nAlaska', image: 'assets/temp.webp', price: 33.5),
    ProductItems(productName: 'Condensada -\nCow Bell', image: 'assets/temp.webp', price: 37.4),
    ProductItems(productName: 'Condensada -\nLiberty ', image: 'assets/temp.webp', price: 34.75),
    ProductItems(productName: 'Evaporada -\nAngel Filled Milk', image: 'assets/temp.webp', price: 44),
    ProductItems(productName: 'Evaporada -\nAlaska', image: 'assets/temp.webp', price: 31.56),
    ProductItems(productName: 'Evaporada -\nCow Bell', image: 'assets/temp.webp', price: 25.99),
    ProductItems(productName: 'Powdered Milk -\nAlaska', image: 'assets/temp.webp', price: 44),
    ProductItems(productName: 'Powdered Milk -\nAnchor', image: 'assets/temp.webp', price: 73.3),
    ProductItems(productName: 'Powdered Milk -\nJersey Fortified', image: 'assets/temp.webp', price: 93),
    ProductItems(productName: 'Powdered Milk -\nBear Brand', image: 'assets/temp.webp', price: 50),
    ProductItems(productName: 'Powdered Milk -\nBirch Tree', image: 'assets/temp.webp', price: 64.75),
    ProductItems(productName: 'Coffee Refill -\nBlend', image: 'assets/temp.webp', price: 18.5),
    ProductItems(productName: 'Coffee Refill -\nGreat Taste', image: 'assets/temp.webp', price: 21),
    ProductItems(productName: 'Coffee Refill -\nNescafe Classic', image: 'assets/temp.webp', price: 21.5),
    ProductItems(productName: 'Coffee 3 in 1 -\nBlend 45', image: 'assets/temp.webp', price: 4.1),
    ProductItems(productName: 'Coffee 3 in 1 -\nCafé Puro', image: 'assets/temp.webp', price: 4.7),
    ProductItems(productName: 'Coffee 3 in 1 -\nGreat Taste', image: 'assets/temp.webp', price: 8.25),
    ProductItems(productName: 'Coffee 3 in 1 -\nKopiko Black', image: 'assets/temp.webp', price: 8),
    ProductItems(productName: 'Coffee 3 in 1 -\nNescafe Original ', image: 'assets/temp.webp', price: 6.75),
    ProductItems(productName: 'Coffee 3 in 1 -\nSan Mig Coffee', image: 'assets/temp.webp', price: 6.05),
    ProductItems(productName: 'Bread -\nPinoy Tasty', image: 'assets/temp.webp', price: 38.5),
    ProductItems(productName: 'Bread -\nPinoy Pandesal', image: 'assets/temp.webp', price: 23.5),
    ProductItems(productName: 'Instant Noodles -\nHo-Mi', image: 'assets/temp.webp', price: 8.4),
    ProductItems(productName: 'Instant Noodles -\nLucky Me!', image: 'assets/temp.webp', price: 8.25),
    ProductItems(productName: 'Instant Noodles -\nPayless', image: 'assets/temp.webp', price: 7),
    ProductItems(productName: 'Instant Noodles -\nQuick Chow', image: 'assets/temp.webp', price: 7.25),
    ProductItems(productName: 'Iodized Salt -\nLasap Salt', image: 'assets/temp.webp', price: 4.5),
    ProductItems(productName: 'Detergent -\nBareta Bar Fabcon', image: 'assets/temp.webp', price: 18.25),
    ProductItems(productName: 'Detergent -\nBudget Bar', image: 'assets/temp.webp', price: 17.75),
    ProductItems(productName: 'Detergent -\nBonux', image: 'assets/temp.webp', price: 21),
    ProductItems(productName: 'Detergent -\nChampion Bar', image: 'assets/temp.webp', price: 21.22),
    ProductItems(productName: 'Detergent -\nSpeed Long Bar', image: 'assets/temp.webp', price: 20.5),
    ProductItems(productName: 'Detergent -\nSulit Bar', image: 'assets/temp.webp', price: 16.75),
    ProductItems(productName: 'Detergent -\nSurf Oxybubbles Bar', image: 'assets/temp.webp', price: 21.75),
    ProductItems(productName: 'Detergent -\nTide Bar', image: 'assets/temp.webp', price: 22),
    ProductItems(productName: 'Distilled Water -\nAbsolute', image: 'assets/temp.webp', price: 27.5),
    ProductItems(productName: 'Distilled Water -\nWilkins', image: 'assets/temp.webp', price: 25),
    ProductItems(productName: 'Purified Water -\nMagnolia Pure ', image: 'assets/temp.webp', price: 19.5),
    ProductItems(productName: 'Purified Water -\nNatures Spring ', image: 'assets/temp.webp', price: 15.4),
    ProductItems(productName: 'Purified Water -\nWilkins Pure', image: 'assets/temp.webp', price: 18),
    ProductItems(productName: 'Mineralized Water -\nHidden Spring', image: 'assets/temp.webp', price: 12.1),
    ProductItems(productName: 'Mineralized Water -\nRefresh', image: 'assets/temp.webp', price: 8.25),
    ProductItems(productName: 'Mineralized Water -\nSummit ', image: 'assets/temp.webp', price: 14.5),
    ProductItems(productName: 'Mineralized Water -\nViva', image: 'assets/temp.webp', price: 13),
    ProductItems(productName: 'Luncheon Meat -\nCDO Chinese Style', image: 'assets/temp.webp', price: 35.5),
    ProductItems(productName: 'Luncheon Meat -\nPurefoods', image: 'assets/temp.webp', price: 33.5),
    ProductItems(productName: 'Meat Loaf -\nArgentina', image: 'assets/temp.webp', price: 22.54),
    ProductItems(productName: 'Meat Loaf -\nCDO', image: 'assets/temp.webp', price: 19),
    ProductItems(productName: 'Meat Loaf -\nGusto', image: 'assets/temp.webp', price: 16.5),
    ProductItems(productName: 'Meat Loaf -\nWinner', image: 'assets/temp.webp', price: 18),
    ProductItems(productName: 'Corned Beef -\nBingo ', image: 'assets/temp.webp', price: 20),
    ProductItems(productName: 'Corned Beef -\nCDO', image: 'assets/temp.webp', price: 26.5),
    ProductItems(productName: 'Corned Beef -\nEl Rancho', image: 'assets/temp.webp', price: 28.5),
    ProductItems(productName: 'Corned Beef -\nStar Corned Beef', image: 'assets/temp.webp', price: 31),
    ProductItems(productName: 'Corned Beef -\nWinner', image: 'assets/temp.webp', price: 30.75),
    ProductItems(productName: 'Corned Beef -\nArgentina ', image: 'assets/temp.webp', price: 39.75),
    ProductItems(productName: 'Beef Loaf -\nArgentina', image: 'assets/temp.webp', price: 21.22),
    ProductItems(productName: 'Beef Loaf -\nBingo', image: 'assets/temp.webp', price: 17),
    ProductItems(productName: 'Beef Loaf -\nCDO', image: 'assets/temp.webp', price: 19),
    ProductItems(productName: 'Beef Loaf -\nPurefoods', image: 'assets/temp.webp', price: 18.15),
    ProductItems(productName: 'Beef Loaf -\nEl Rancho', image: 'assets/temp.webp', price: 17.75),
    ProductItems(productName: 'Vinegar -\nAmihan Cane', image: 'assets/temp.webp', price: 10.4),
    ProductItems(productName: 'Vinegar -\nDatu Puti', image: 'assets/temp.webp', price: 17.5),
    ProductItems(productName: 'Vinegar -\nSilver Swan', image: 'assets/temp.webp', price: 17.5),
    ProductItems(productName: 'Patis -\nDatu Puti', image: 'assets/temp.webp', price: 26.25),
    ProductItems(productName: 'Patis -\nLorins', image: 'assets/temp.webp', price: 21.25),
    ProductItems(productName: 'Patis -\nNelicom', image: 'assets/temp.webp', price: 29.7),
    ProductItems(productName: 'Patis -\nSilver Swan', image: 'assets/temp.webp', price: 23.75),
    ProductItems(productName: 'Soy Sauce -\nDatu Puti', image: 'assets/temp.webp', price: 19.1),
    ProductItems(productName: 'Soy Sauce -\nSilver Swan', image: 'assets/temp.webp', price: 20.25),
  ];

  List<ProductItems> displayList = List.from(mainProductList);
  double total = AddToCart.prices.sum;

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
            Total(total: double.parse(total.toStringAsFixed(2))),
          ],
        ),
      ),
    );
  }
}
