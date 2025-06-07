import 'package:all_in_one/Models/Random%20User%20Model/random_user_model.dart';
import 'package:dio/dio.dart';

class RandomUserService{
  static Dio dio = Dio();

  static Future<RandomUserModel> getUsers({required String gender}) async{
    var url = "https://randomuser.me/api/?results=5&gender=$gender";
    var response  = await dio.get(url);

    if(response.statusCode==200){
      return RandomUserModel.fromJson(response.data);
    }else{
      throw Exception();
    }
  }
  static Future<RandomUserModel> getAllUsers() async{
    var url = "https://randomuser.me/api/?results=5";
    var response  = await dio.get(url);

    if(response.statusCode==200){
      return RandomUserModel.fromJson(response.data);
    }else{
      throw Exception();
    }
  }
}