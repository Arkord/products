import 'package:flutter/material.dart';
import 'package:productos_app/screens/loading_screen.dart';
import 'package:productos_app/services/products_service.dart';
import 'package:productos_app/widgets/product_card.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final productsService = Provider.of<ProductsService>(context);

    if(productsService.isLoading) {
      return LoadingScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, index) => GestureDetector(
          child: ProductCard(
            product: productsService.products[index],
          ),
          onTap: () => Navigator.pushNamed(context, 'product'),
        ),
        itemCount: productsService.products.length,
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