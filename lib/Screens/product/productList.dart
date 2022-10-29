import 'package:flutter/material.dart';
import '../../Lists/product.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
   static List<ProductList> mainProductList = [
     ProductList('test 1', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 2', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 3', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 4', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 5', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 1', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 2', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 3', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 4', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
     ProductList('test 5', 'https://www.bushbeans.com/-/media/bushsbeans/salsifyimports/0003940001614_H1N1_R.png', 1.10),
  ];

  List<ProductList> displayList = List.from(mainProductList);

  void updateList(String value){
    setState(() {
      displayList = mainProductList.where((element) => element.product!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[600],
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: TextField(
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
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: displayList.length,
                    itemBuilder: (context,index) => Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          displayList[index].product!,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                            ),
                        ),
                        subtitle: Text(
                          '₱${displayList[index].price!}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                            ),
                        ),
                        trailing: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.teal[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          onPressed: () {  },
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                        leading: Image.network(
                          displayList[index].photo!,
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                    )
                )
              ),
          ],
        ),
      ),
    );
  }
}
