import 'package:all_in_one/Providers/News%20Provider/news_provider.dart';
import 'package:all_in_one/Screens/News%20Screens/news_screen.dart';
import 'package:all_in_one/Widgets/Auth%20Customs/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsSearchScreen extends StatelessWidget {
   NewsSearchScreen({super.key});
   TextEditingController search = TextEditingController();
   var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var NewsProv = Provider.of<NewsProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Search News"),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              CustomTextField(
                  labelText: "Search",
                  controller: search, icon: Icon(Icons.search)),
              ElevatedButton(onPressed: () async{
                if(formKey.currentState!.validate()){
                  NewsProv.newsModel = null;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(category: search.text),));
                }
              }, child: Text("Search"))
            ],
          ),
        ),
      ),
    );
  }
}
