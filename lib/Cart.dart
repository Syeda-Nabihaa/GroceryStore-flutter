import 'package:flutter/material.dart';

class list {
  final String iamge;
  final String name;
  final String description;
  final String price;

  list({
    required this.iamge,
    required this.name,
    required this.description,
    required this.price,
  });
}

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

List<list> prodList = [
  list(
    iamge: "assets/images/cart1.png",
    name: "Sprite Can",
    description: "325ml Price",
    price: "PKR 150",
  ),
  list(
    iamge: "assets/images/cart2.png",
    name: "Diet Coke",
    description: "2L Price",
    price: "PKR 300",
  ),
  list(
    iamge: "assets/images/cart3.png",
    name: "Apple And grape juice",
    description: "325ml Price",
    price: "Pkr 150",
  ),
  list(
    iamge: "assets/images/cart4.png",
    name: "Coco Cola Can",
    description: "325ml Price",
    price: "PKR 150",
  ),
  list(
    iamge: "assets/images/cart5.png",
    name: "Pepsi Can",
    description: "325ml Price",
    price: "PKR 150",
  ),
];

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ), // ← consistent side padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40), // Optional top spacing
              Center(
                child: Text(
                  "My Cart",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey, // You can change the color
                      width: 1.0, // Optional: change thickness
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
