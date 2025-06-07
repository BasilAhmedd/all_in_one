import 'package:all_in_one/Models/Auth%20Models/login_model.dart';
import 'package:all_in_one/Services/Auth%20Service/login_service.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier{
  LoginModel? loginModel;

  Future<void> loginProv({required String email , required String password}) async{
    loginModel = await LoginService.loginFunction(email: email, password: password);
    notifyListeners();
  }
}