import 'package:flutter/material.dart';
import 'package:productos_app/models/product.dart';

class ProductCard extends StatelessWidget {

  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top: 40, bottom: 40),
        width: double.infinity,
        height: 300,
        decoration: _cardBorders(),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _BackgroundImage( product.pic ),
            _ProductDetails(name: product.name, description: product.description,),
            Positioned(
              top: 0,
              right: 0,
              child: _PriceTag(price: product.price,)
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
        color: Colors.black54,
        blurRadius: 10,
        offset: Offset(0,7)
      )
    ]
  );


}

class _PriceTag extends StatelessWidget {

  final double price;

  const _PriceTag({required this.price});

   @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      child: FittedBox(
        child: Text('\$$price', style: TextStyle(color: Color(0xFF595758), fontSize: 20, fontWeight: FontWeight.bold),)
      ),
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFFFFEE100)
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {

  final String name;
  final String? description;

  const _ProductDetails({ required this.name, this.description});

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = TextStyle( fontSize: 16, color: Color(0xFF595758), fontWeight: FontWeight.bold);
    TextStyle style2 = TextStyle( fontSize: 12, color: Color(0xFF595758), fontWeight: FontWeight.bold);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      width: double.infinity,
      height: 60,
      color: Color(0xFFFEE100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name, 
            style: style1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
           Text(
             description!,
             style: style2,
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
           ),
        ],
      )
    );
  }
}

class _BackgroundImage extends StatelessWidget {

  final String? url;

  const _BackgroundImage(this.url); 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: url == null
      ? Image(image: AssetImage('assets/image.png'))
      : FadeInImage(
        placeholder: AssetImage('assets/dual-ball.gif'),
        image: NetworkImage(url!),
        fit: BoxFit.cover
      ),
    );
  }
}
