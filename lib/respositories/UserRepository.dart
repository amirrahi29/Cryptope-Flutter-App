import 'dart:convert';
import 'package:cryptope/CustomClasses/Config.dart';
import 'package:cryptope/model/MainResponseModel.dart';
import 'package:cryptope/model/UserModel.dart';
import 'package:cryptope/model/UserProfileModel.dart';

class UserRepository{

  static Future<dynamic> signInSignUp(UserModel userModel)async{
    var response = await Config.client.post(
        Uri.parse("${Config.baseUrl}${Config.signInSignUp}"),
    body: userModel.toMap());
    var convertedJson = jsonDecode(response.body);
    return convertedJson;
  }

  static Future<UserProfileModel> getUserProfile()async{
    //userId
    try {
      var userId = await Config.getUserId();
      var response = await Config.client.post(
              Uri.parse("${Config.baseUrl}${Config.userProfile}"),
              body: {
                "user_id": userId.toString()
              });
      var convertedJson = jsonDecode(response.body);
      // print('convertedJson'+response.body);
      return UserProfileModel.fromJson(convertedJson);
    } catch (e) {
      return UserProfileModel(
        status: "false",
        responseCode: Config.fourHundredStatusCode);
    }
  }

}