import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        title: Text("nector store" , textAlign: TextAlign.center , style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF53B175),
      ),
    );
  }
}