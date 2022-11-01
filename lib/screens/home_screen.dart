import 'package:flutter/material.dart';
import 'package:productos_app/widgets/product_card.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, index) => ProductCard(),
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(
          Icons.add
        ),
      ),
   );
  }
}