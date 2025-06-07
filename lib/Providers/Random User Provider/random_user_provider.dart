
import 'package:all_in_one/Models/Random%20User%20Model/random_user_model.dart';
import 'package:all_in_one/Services/Random%20User%20Service/random_user_service.dart';
import 'package:flutter/material.dart';


class RandomUserProvider with ChangeNotifier{
  RandomUserModel? randomUserModel;

  Future<void> getUsersProv ({required String Gender})async{
    randomUserModel = await RandomUserService.getUsers(gender: Gender);
    notifyListeners();
  }
  Future<void> getAllUsersProv ()async{
    randomUserModel = await RandomUserService.getAllUsers();
    notifyListeners();
  }

}