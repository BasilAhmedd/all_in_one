import 'package:all_in_one/Models/Auth%20Models/register_model.dart';
import 'package:all_in_one/Services/Auth%20Service/register_service.dart';
import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier{
  RegisterModel? registerModel;

  Future<void> registerProv({required String email,required String password,required String phone,required String name})async{
    registerModel = await RegisterService.registerFunction(email: email, password: password, phone: phone, name: name);
    notifyListeners();
  }
}