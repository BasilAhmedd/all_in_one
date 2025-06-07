import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key, required this.img, required this.title, required this.desc, required this.PublishedAt, });
  final String img;
  final String title;
  final String desc;
  final String PublishedAt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Details"),centerTitle: true,),
      body: Padding(padding: EdgeInsetsGeometry.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Image.network(img,width: 400,),
              Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text(desc,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              Text(PublishedAt,style: TextStyle(fontSize: 20),),
            ],
          ),
        ),),
    );
  }
}