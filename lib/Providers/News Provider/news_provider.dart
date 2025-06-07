import 'package:all_in_one/Models/News%20Model/news_model.dart';
import 'package:all_in_one/Services/News%20Service/news_service.dart';
import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel? newsModel;
  Future<void> getNewsProv({required String Category})async{
    newsModel = await NewsService.getNews(Category: Category);
    notifyListeners();
  }
}