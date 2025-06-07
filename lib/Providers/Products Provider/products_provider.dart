import 'package:all_in_one/Models/Products%20Model/products_model.dart';
import 'package:all_in_one/Services/Product%20Service/products_service.dart';
import 'package:flutter/material.dart';

class ProductsProvider extends ChangeNotifier{
  ProductsModel? productsModel;
  Future<void> getProductsProv() async{
    productsModel = await ProductService.getProdcuts();
    notifyListeners();
  }
}