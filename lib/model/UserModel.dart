class UserModel{

  String? idToken;
  String? typeOfLogin;
  String? name;
  String? email;
  String? profileImage;

  UserModel({this.idToken,this.typeOfLogin,this.name,this.email,this.profileImage});

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      idToken: json['idToken'],
      typeOfLogin: json['typeOfLogin'],
      name: json['name'],
      email: json['email'],
      profileImage: json['profileImage'],
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'idToken':idToken,
      'typeOfLogin':typeOfLogin,
      'name':name,
      'email':email,
      'profileImage':profileImage,
    };
  }

}