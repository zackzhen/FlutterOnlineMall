import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("购物车"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          )
        ],
      ),
    );
  }
}
