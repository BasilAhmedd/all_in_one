class ProductsModel{
  List<dynamic> products;
  ProductsModel({required this.products});
  
  factory ProductsModel.fromJson(Map<String,dynamic>Json){
    return ProductsModel(products: Json['response']);
  }
}