import 'package:flutter/material.dart';
import 'package:productos_app/ui/input_decorations.dart';
import 'package:productos_app/widgets/product_image.dart';

class ProductScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ProductImage(),
                Positioned(
                  top: 30,
                  left: 10,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back_ios_new, size: 30, color: Colors.white)
                  )
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: IconButton(
                    onPressed: (){
                      // TODO camera implementation
                    },
                    icon: Icon(Icons.camera_alt_outlined, size: 30, color: Colors.white)
                  )
                ),

              ],
            ),
             _ProductForm(),
              SizedBox(
                  height: 200,
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.save_outlined) 
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 20),
        width: double.infinity,
        decoration: _buildBoxDecoration(),
        child: Form(
          child: Column(
            children: [
              SizedBox( height: 10 ),
              TextFormField(
                decoration: InputDecorations.authInputDecoration(
                  hintText: 'Product name', 
                  labelText: 'Name:'
                ),
              ),
              SizedBox( height: 30 ),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecorations.authInputDecoration(
                  hintText: '\$150', 
                  labelText: 'Price:'
                ),
              ),

              SizedBox( height: 30),

              SwitchListTile.adaptive(
                activeColor: Color(0xFFC39200),
                title: Text('Available'),
                value: true, 
                onChanged: (value) {

                }
              ),

              SizedBox( height: 30)

            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    color: Colors.amber,
    borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        offset: Offset(0, 5),
        blurRadius: 5
      )
    ]
  );

}