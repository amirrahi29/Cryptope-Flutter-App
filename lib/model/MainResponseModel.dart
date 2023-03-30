class UserResponseModel{

  String? status;
  String? is_new_user;
  int? responseCode;
  String? responseMessage;
  String? user_id;

  UserResponseModel({this.status,this.is_new_user,this.responseCode,this.responseMessage,this.user_id});

  factory UserResponseModel.fromJson(Map<String,dynamic> json){
    return UserResponseModel(
      status: json['status'],
      is_new_user: json['is_new_user'],
      responseCode: json['responseCode'],
      responseMessage: json['responseMessage'],
      user_id: json['user_id'],
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'status':status,
      'is_new_user':is_new_user,
      'responseCode':responseCode,
      'responseMessage':responseMessage,
      'user_id':user_id,
    };
  }

  String toString(){
    return 'status:$status,is_new_user:$is_new_user,responseCode:$responseCode,responseMessage:$responseMessage,user_id:$user_id';
  }

}