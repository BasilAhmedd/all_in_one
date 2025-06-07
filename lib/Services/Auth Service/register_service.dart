import 'package:all_in_one/Models/Auth%20Models/register_model.dart';
import 'package:dio/dio.dart';

class RegisterService{
  static Dio dio = Dio();

  static Future<RegisterModel> registerFunction({required String email,required String password,required String phone,required String name}) async{
    String url = "https://elsewedyteam.runasp.net/api/Register/AddUser";
    var response = await dio.post(url,data: {
      "Name":name,
      "Email": email,
      "Phone":phone,
      "password":password
    });

    if(response.statusCode == 200){
      return RegisterModel.fromJson(response.data);
    }else{
      throw Exception();
    }
  }
}