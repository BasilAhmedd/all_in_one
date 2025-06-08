import 'package:all_in_one/Models/News%20Model/news_model.dart';
import 'package:dio/dio.dart';

class NewsService{
  static Dio dio = Dio();
  static Future<NewsModel> getNews({required String Category})async{
    String url = "https://newsapi.org/v2/top-headlines?category=$Category&country=us&apiKey=f4f949f1fef6467ca03b05af4d492650";
    var response = await dio.get(url);
    if(response.statusCode==200){
      return NewsModel.fromJson(response.data);
    }else{
      throw Exception();
    }
  }
}