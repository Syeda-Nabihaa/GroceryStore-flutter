import 'package:flutter/material.dart';

class ExploreProducts {
  final String image;
  final String title;
  final Color color;
  final Color borderColor;

  ExploreProducts({
    required this.image,
    required this.title,
    required this.color,
    required this.borderColor,
  });
}

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

List<ExploreProducts> prod = [
  ExploreProducts(
    image: "assets/images/explore1.png",
    title: "Fresh Fruits & Vegetables",
    color: const Color.fromARGB(206, 215, 238, 250),
    borderColor: const Color.fromARGB(255, 161, 209, 248),
  ),
  ExploreProducts(
    image: "assets/images/explore2.png",
    title: "Cooking oil and Ghee",
    color: const Color.fromARGB(255, 204, 255, 206),
    borderColor: const Color.fromARGB(255, 138, 255, 142)
  ),
  ExploreProducts(
    image: "assets/images/explore3.png", 
    title: "Meat & Fish",
    color: const Color.fromARGB(255, 219, 198, 255),
    borderColor: const Color.fromARGB(255, 191, 154, 255),
    ),
  ExploreProducts(
    image: "assets/images/explore4.png",
    title: "Bakery & snacks",
    color: const Color.fromARGB(255, 252, 205, 189),
    borderColor: const Color.fromARGB(255, 255, 189, 164)
  ),
  ExploreProducts(
    image: "assets/images/explore5.png", 
    title: "Dairy & Eggs",
    borderColor: const Color.fromARGB(255, 255, 153, 187),
    color: const Color.fromARGB(255, 255, 184, 207),
    ),
  ExploreProducts(
    image: "assets/images/explore6.png", 
    title: "Beverages",
    color: const Color.fromARGB(255, 255, 231, 160),
    borderColor: const Color.fromARGB(255, 247, 219, 135)
    ),
];

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28.0,
          ), // ← consistent side padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40), // Optional top spacing
              Center(
                child: Text(
                  "Find Products",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),
              Container(
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
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true, // ← tell GridView to size itself
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 15,
                  // childAspectRatio: 0.65,
                ),
                itemCount: prod.length,
                itemBuilder: (context, index) {
                  final products = prod[index];
                  return Container(
                    height: 200,
                    width: 200,
                  
                    decoration: BoxDecoration(
                      color: products.color,
                      border: Border.all(
                        color: products.borderColor, 
                        width: 2.0, 
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // Optional: adds rounded corners
                    ),
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(products.image),

                        Text(
                          products.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
