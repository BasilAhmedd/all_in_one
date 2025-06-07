class NewsModel{
  List<dynamic> News;
  NewsModel({required this.News});

  factory NewsModel.fromJson(Map<String,dynamic>Json){
    return NewsModel(News: Json['articles']);
  }
}