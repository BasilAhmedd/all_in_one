import 'package:flutter/material.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key, required this.img
    , required this.name, required this.price, });
  final String img;
  final String name;
  final num price;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Image.network(img,width: 70,),
          FittedBox(fit: BoxFit.scaleDown,child: Text(name,style: TextStyle(fontSize: 20),)),
          Text("Price : ${price.toString()}",style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
