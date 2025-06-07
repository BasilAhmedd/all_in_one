import 'package:all_in_one/Providers/News%20Provider/news_provider.dart';
import 'package:all_in_one/Screens/News%20Screens/news_details_screen.dart';
import 'package:all_in_one/Widgets/News%20Customs/custom_news_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News"),centerTitle: true,),
      body: Consumer<NewsProvider>(builder: (context, value, child) {
        var data = value.newsModel;
        if(data == null){
          value.getNewsProv(Category: category);
          return Center(child: CircularProgressIndicator(),);
        }else{
          return ListView.builder(
              itemCount: data.News.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailsScreen(
                      img: data.News[index]['urlToImage'] ?? "",
                      title: data.News[index]['title'] ?? "",
                      desc: data.News[index]['description'] ?? "",
                      PublishedAt: data.News[index]['publishedAt'] ?? ""),));
                },
                child: CustomNewsCard(
                    img: data.News[index]['urlToImage'] ?? "",
                    title: data.News[index]['title'] ?? "",
                    publishedAt: data.News[index]['publishedAt'] ?? ""),
              ),);
        }
      },),
    );
  }
}
