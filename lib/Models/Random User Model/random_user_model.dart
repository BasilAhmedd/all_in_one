class RandomUserModel{
  List<dynamic> Users;

  RandomUserModel(this.Users);

  factory RandomUserModel.fromJson(Map<String,dynamic>Json){
    return RandomUserModel(Json['results']);
  }
}