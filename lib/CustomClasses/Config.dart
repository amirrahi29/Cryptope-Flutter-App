import 'package:http/http.dart' as http;

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

  //http client
  static var client = http.Client();

  //status codes
  static int twoHundredStatusCode = 200;
  static int threeHundredStatusCode = 300;
  static int fourHundredStatusCode = 400;

  //saved user
  static Future<String> getUserId()async{
    var userId = await "3";
    return userId;
  }
}
