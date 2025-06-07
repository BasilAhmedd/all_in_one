import 'package:all_in_one/Models/News%20Model/news_model.dart';
import 'package:dio/dio.dart';

class NewsService{
  static Dio dio = Dio();
  static Future<NewsModel> getNews({required String Category})async{
    String url = "https://newsapi.org/v2/top-headlines?category=$Category&country=us&apiKey=YOUR_KEY";
    var response = await dio.get(url);
    if(response.statusCode==200){
      return NewsModel.fromJson(response.data);
    }else{
      throw Exception();
    }
  }
}