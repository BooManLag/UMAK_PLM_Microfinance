import 'package:flutter/material.dart';
import 'package:untitled/Screens/product/productCart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:collection/collection.dart';
import 'productItems.dart';
import 'productTotal.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  static List<ProductItems> mainProductList = [
    ProductItems(productName: 'Canned Sardines -\n555 Bonus Pack', image: 'assets/products/canned_sardines/555.png', price: 17.25),
    ProductItems(productName: 'Canned Sardines -\nAtami', image: 'assets/products/canned_sardines/Atami.png', price: 17.77),
    ProductItems(productName: 'Canned Sardines -\nHakone', image: 'assets/products/canned_sardines/Hakone.png', price: 13.4),
    ProductItems(productName: 'Canned Sardines -\nKing Cup', image: 'assets/products/canned_sardines/King.png', price: 16.5),
    ProductItems(productName: 'Canned Sardines -\nLucky 7', image: 'assets/products/canned_sardines/Lucky.png', price: 17.25),
    ProductItems(productName: 'Canned Sardines -\nSaba Phil. Sardines', image: 'assets/products/canned_sardines/Saba.png', price: 17.25),
    ProductItems(productName: 'Condensada -\nAlaska', image: 'assets/products/condensada/Alaska.png', price: 33.5),
    ProductItems(productName: 'Condensada -\nCow Bell', image: 'assets/products/condensada/Cow.png', price: 37.4),
    ProductItems(productName: 'Condensada -\nLiberty ', image: 'assets/products/condensada/Liberty.png', price: 34.75),
    ProductItems(productName: 'Evaporada -\nAngel Filled Milk', image: 'assets/products/evaporada/Angel.png', price: 44),
    ProductItems(productName: 'Evaporada -\nAlaska', image: 'assets/products/evaporada/Alaska.png', price: 31.56),
    ProductItems(productName: 'Evaporada -\nCow Bell', image: 'assets/products/evaporada/Cow.png', price: 25.99),
    ProductItems(productName: 'Powdered Milk -\nAnchor', image: 'assets/products/milk/Anchor.png', price: 73.3),
    ProductItems(productName: 'Powdered Milk -\nBear Brand', image: 'assets/products/milk/bear_brand.png', price: 50),
    ProductItems(productName: 'Powdered Milk -\nBirch Tree', image: 'assets/products/milk/Birch.png', price: 64.75),
    ProductItems(productName: 'Coffee Refill -\nNescafe Classic', image: 'assets/products/coffee/nescafe.png', price: 21.5),
    ProductItems(productName: 'Coffee 3 in 1 -\nBlend 45', image: 'assets/products/coffee_3/Blend.png', price: 4.1),
    ProductItems(productName: 'Coffee 3 in 1 -\nNescafe Original ', image: 'assets/products/coffee_3/nescafe.png', price: 6.75),
    ProductItems(productName: 'Coffee 3 in 1 -\nSan Mig Coffee', image: 'assets/products/coffee_3/San_Mig.png', price: 6.05),
    ProductItems(productName: 'Bread -\nPinoy Tasty', image: 'assets/products/bread/pandesal.png', price: 38.5),
    ProductItems(productName: 'Bread -\nPinoy Pandesal', image: 'assets/products/bread/tasty.png', price: 23.5),
    ProductItems(productName: 'Instant Noodles -\nHo-Mi', image: 'assets/products/ins_noodles/Ho-Mi.png', price: 8.4),
    ProductItems(productName: 'Instant Noodles -\nLucky Me!', image: 'assets/products/ins_noodles/Lucky.png', price: 8.25),
    ProductItems(productName: 'Instant Noodles -\nPayless', image: 'assets/products/ins_noodles/Payless.png', price: 7),
    ProductItems(productName: 'Detergent -\nBareta Bar Fabcon', image: 'assets/products/detergent/Bareta.png', price: 18.25),
    ProductItems(productName: 'Detergent -\nChampion Bar', image: 'assets/products/detergent/Champion.png', price: 21.22),
    ProductItems(productName: 'Detergent -\nTide Bar', image: 'assets/products/detergent/Tide.png', price: 22),
    ProductItems(productName: 'Distilled Water -\nWilkins', image: 'assets/products/distilled/Wilkins.png', price: 25),
    ProductItems(productName: 'Purified Water -\nNatures Spring ', image: 'assets/products/purified/Natures.png', price: 15.4),
    ProductItems(productName: 'Purified Water -\nWilkins Pure', image: 'assets/products/purified/Wilkins.png', price: 18),
    ProductItems(productName: 'Meat Loaf -\nCDO', image: 'assets/products/meat_loaf/CDO.png', price: 19),
    ProductItems(productName: 'Meat Loaf -\nWinner', image: 'assets/products/meat_loaf/Winner.png', price: 18),
    ProductItems(productName: 'Corned Beef -\nBingo ', image: 'assets/products/corned_beef/Bingo.png', price: 20),
    ProductItems(productName: 'Corned Beef -\nCDO', image: 'assets/products/corned_beef/CDO.png', price: 26.5),
    ProductItems(productName: 'Corned Beef -\nEl Rancho', image: 'assets/products/corned_beef/El_Rancho.png', price: 28.5),
    ProductItems(productName: 'Corned Beef -\nArgentina ', image: 'assets/products/corned_beef/Argentina.png', price: 39.75),
    ProductItems(productName: 'Vinegar -\nDatu Puti', image: 'assets/products/vinegar/datu.png', price: 17.5),
    ProductItems(productName: 'Vinegar -\nSilver Swan', image: 'assets/products/vinegar/Swan.png', price: 17.5),
    ProductItems(productName: 'Patis -\nDatu Puti', image: 'assets/products/patis/Datu.png', price: 26.25),
    ProductItems(productName: 'Patis -\nSilver Swan', image: 'assets/products/patis/Swan.png', price: 23.75),
    ProductItems(productName: 'Soy Sauce -\nDatu Puti', image: 'assets/products/soy_sauce/Datu.png', price: 19.1),
    ProductItems(productName: 'Soy Sauce -\nSilver Swan', image: 'assets/products/soy_sauce/Swan.png', price: 20.25),
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
      backgroundColor: Color(0xFF2F83D6),
      body: GestureDetector(
        onTap: (){
          setState(() {
            total = AddToCart.prices.sum;
          });
        },
        child: SafeArea(
          child: Padding(
            padding: REdgeInsets.all(10),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Basic Necessities List',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0.sp,
                        color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 5.0.h,),
                TextField(
                  onChanged: (value) => updateList(value),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEEEEEE),
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
                SizedBox(height: 10.0.h,),
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
                SizedBox(height: 10.0.h,),
                Total(total: double.parse(total.toStringAsFixed(2)), type: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
