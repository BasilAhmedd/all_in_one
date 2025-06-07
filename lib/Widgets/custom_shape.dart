import 'package:flutter/material.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key, required this.iconData, required this.txt, required this.color, required this.tap});
 final IconData iconData;
 final String txt;
 final Color color;
 final void Function() tap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: tap,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              Icon(iconData,size: 70,color: Colors.white,),
              Text(txt,style: TextStyle(fontSize: 25,color: Colors.white),)
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,

          ),
        ),
      ),
    );
  }
}
