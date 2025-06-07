import 'package:all_in_one/Models/Auth%20Models/login_model.dart';
import 'package:dio/dio.dart';

class LoginService{
  static Dio dio = Dio();

  static Future<LoginModel> loginFunction({required String email,required String password}) async{
    String url = "https://elsewedyteam.runasp.net/api/Login/CheckUser";
    var response = await dio.post(url,data: {
      "Email": email,
      "password":password
    });

    if(response.statusCode == 200){
      return LoginModel.fromJson(response.data);
    }else{
      throw Exception();
    }
  }
}