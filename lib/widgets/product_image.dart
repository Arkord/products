import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 25),
      child: Container(
        decoration: _buildBoxDecoration(),
        width: double.infinity,
        height: 250,
        child: ClipRRect (
          child: FadeInImage(
            image: NetworkImage('https://via.placeholder.com/400x300/green') ,
            placeholder: AssetImage('assets/dual-ball.gif') ,
            fit: BoxFit.cover,
          ),
        ),
      )
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    color: Colors.amber,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        blurRadius: 10,
        offset: Offset(0, 5)
      )
    ]
  );

}