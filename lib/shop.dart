import 'package:flutter/material.dart';
import 'package:grocerystore/Explore.dart';

class GroceryItem {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  GroceryItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<GroceryItem> groceryItem = [
    GroceryItem(
      image: "assets/images/apple.png",
      title: 'Red Apple',
      subtitle: '1kg Price',
      price: "PKR 200",
    ),
    GroceryItem(
      image: "assets/images/banana.png",
      title: 'Organic Bananas',
      subtitle: '7pcs Price',
      price: "PKR 100",
    ),
    GroceryItem(
      image: 'assets/images/meat.png',
      title: 'Fresh Meat',
      subtitle: '2kg Price',
      price: "PKR 1000",
    ),
    GroceryItem(
      image: 'assets/images/oil.png',
      title: 'Oil',
      subtitle: '1bottle Price',
      price: "PKR 200",
    ),
    GroceryItem(
      image: 'assets/images/rice.png',
      title: 'Rice',
      subtitle: '1kg Price',
      price: "PKR 350",
    ),
    GroceryItem(
      image: 'assets/images/daal.png',
      title: 'Yellow Daal',
      subtitle: '1kg Price',
      price: "PKR 150",
    ),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
              width: double.infinity,
              // color: Colors.lightBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/carrotlogo.png"),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.black),
                      Text(
                        "Karachi , Nazimabad",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 8.0,
                ),
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: 400,
              child: Image.asset(
                "assets/images/banner.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exclusive Offer",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                      color: Color(0xFF53B175),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              // padding: const EdgeInsets.symmetric(horizontal: 40),
              shrinkWrap: true, // ← tell GridView to size itself
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 0.65,
              ),
              itemCount: groceryItem.length,
              itemBuilder: (context, index) {
                final item = groceryItem[index];
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Image.asset(
                            item.image,
                            height: 50,

                            // color: Colors.white,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          item.title,

                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(item.subtitle),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.price,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            FloatingActionButton(
                              heroTag: null,
                              onPressed: () {},
                              mini: true,
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      
    );
  }
}
