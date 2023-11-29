class LoginModel {
  String? message;
  String? token_type;
  String? access_token;


  LoginModel.fromjson(Map<String, dynamic> json) {
    message = json['message'];
    token_type = json['token_type'];
    access_token = json['access_token'];
  }
}

class User {
  int? id;
  String? name;
  String? phone;
  String? role;
  String? created_at;
  String? updated_at;
  User.fromjson(Map<String , dynamic> json){
    id=json['id'];
    name=json['name'];
    phone=json['phone'];
    role=json['role'];
    created_at=json['created_at'];
    updated_at=json['updated_at'];
  }
}
