import 'package:flutter/material.dart';

class CustomNewsCard extends StatelessWidget {
  const CustomNewsCard({super.key, required this.img, required this.title, required this.publishedAt});
 final String img;
 final String title;
 final String publishedAt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3),borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          children: [
            ClipRRect(child: Image.network(img),borderRadius: BorderRadius.circular(30),),
            Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Text(publishedAt,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),

          ],
        ),
      ),
    );
  }
}
