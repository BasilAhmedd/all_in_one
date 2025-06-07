class LoginModel{
  bool status;
  String message;
  
  LoginModel({required this.status,required this.message});
  
  factory LoginModel.fromJson(Map<String,dynamic>Json){
    return LoginModel(status: Json['status'], message: Json['message']);
  }
}