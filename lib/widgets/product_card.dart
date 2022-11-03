import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

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
            _BackgroundImage(),
            _ProductDetails(),
            Positioned(
              top: 0,
              right: 0,
              child: _PriceTag()
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
   @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      child: FittedBox(
        child: Text('\$50,070.00', style: TextStyle(color: Color(0xFF595758), fontSize: 20, fontWeight: FontWeight.bold),)
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
            'Acer Predator Helios 700', 
            style: style1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Bigger, stronger and with plenty of power to spare. Tackle every game with Helios at your back.', 
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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: FadeInImage(
        placeholder: AssetImage('assets/dual-ball.gif'),
        image: NetworkImage('https://via.placeholder.com/400x300/'),
        fit: BoxFit.cover
      ),
    );
  }
}
