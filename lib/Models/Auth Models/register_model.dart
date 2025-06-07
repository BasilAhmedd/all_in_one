class RegisterModel{
  bool status;
  String message;

  RegisterModel({required this.status,required this.message});

  factory RegisterModel.fromJson(Map<String,dynamic>Json){
    return RegisterModel(status: Json['status'], message: Json['message']);
  }
}