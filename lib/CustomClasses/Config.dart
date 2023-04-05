import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Config {

  //base url
  static String baseUrl = "http://172.105.47.14/cryptope_admin/index.php/api";

  //end url
  static String signInSignUp = "/loginSignup";
  static String userProfile = "/user_profile";
  static String getEvents = "/getEvents";
  static String getGif = "/getGif";
  static String getNews = "/getNewsGraphics";
  static String getCoins = "/getCoinLogos";
  static String getProjects = "/getProjects";

  //http client
  static var client = http.Client();

  //status codes
  static int twoHundredStatusCode = 200;
  static int threeHundredStatusCode = 300;
  static int fourHundredStatusCode = 400;

  //get user
  static Future<int?> getUserId()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    int? userId = await pref.getInt('userId');
    print(userId);
    return userId;
  }

  //save user
  static void saveUserId(int userId)async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('userId', userId);
  }
}
