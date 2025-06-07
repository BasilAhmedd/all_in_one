import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.img, required this.phone, required this.name, required this.email, required this.gender});
  final String img;
  final String phone;
  final String name;
  final String email;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          ClipRRect(child: Image.network(img),borderRadius: BorderRadiusGeometry.all(Radius.circular(70)),),
          Text(name,style: TextStyle(fontSize: 20),),
          Text(email,style: TextStyle(fontSize: 20),),
          Text(phone,style: TextStyle(fontSize: 20),),
          Text(gender,style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
