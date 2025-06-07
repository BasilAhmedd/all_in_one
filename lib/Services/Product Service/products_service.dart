import 'package:all_in_one/Models/Products%20Model/products_model.dart';
import 'package:dio/dio.dart';

class ProductService{
  static Dio dio = Dio();
  static Future<ProductsModel> getProdcuts()async{
    String url = "https://elsewedyteam.runasp.net/api/Product/GetProducts";
    var response = await dio.get(url);
    
    if(response.statusCode == 200){
      return ProductsModel.fromJson(response.data);
    }
    else{
      throw Exception();
    }
  }
}