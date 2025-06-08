import 'package:flutter/material.dart';

class ShopDetailsScreen extends StatelessWidget {
  const ShopDetailsScreen({super.key, required this.img, required this.name, required this.desc, required this.price});
  final String img;
  final String name;
  final String desc;
  final num price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details"),centerTitle: true,),
      body: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            Image.network(img,width: 250,),
            Text(name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text(desc,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
            Text("Price: $price".toString(),style: TextStyle(fontSize: 20),),
          ],
        ),
      ),),
    );
  }
}
