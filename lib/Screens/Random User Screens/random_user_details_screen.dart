import 'package:flutter/material.dart';

class RandomUserDetailsScreen extends StatelessWidget {
  const RandomUserDetailsScreen({super.key, required this.img, required this.gender, required this.phone, required this.age, required this.country, required this.state, required this.title, required this.first, required this.last, required this.email});
  final String img;
  final String title;
  final String first;
  final String last;
  final String gender;
  final String phone;
  final String email;
  final num age;
  final String country;
  final String state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Details"),centerTitle: true,),
      body: Padding(padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              ClipRRect(child: Image.network(img),borderRadius: BorderRadius.all(Radius.circular(30)),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text(first,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text(last,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

                ],
              ),
              Text("Email : $email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              Text("Gender : $gender",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              Text("Phone : $phone",style: TextStyle(fontSize: 20),),
              Text("Age : $age".toString(),style: TextStyle(fontSize: 20),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(country,style: TextStyle(fontSize: 20),),
                  Text(state,style: TextStyle(fontSize: 20),),
                ],
              ),
            ],
          ),
        ),),
    );
  }
}
