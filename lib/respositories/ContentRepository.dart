import 'dart:convert';
import 'package:cryptope/CustomClasses/Config.dart';
import 'package:cryptope/model/CoinsModel.dart';
import 'package:cryptope/model/EventModel.dart';
import 'package:cryptope/model/GifsModel.dart';
import 'package:cryptope/model/NewsModel.dart';

class ContentRepository {
  static Future<dynamic> getGifs() async {
    try {
      var response = await Config.client
          .get(Uri.parse("${Config.baseUrl}${Config.getGif}"));
      var convertedJson = jsonDecode(response.body);
      return GifsModel.fromJson(convertedJson);
    } catch (e) {
      return null;
    }
  }

  static Future<dynamic> getNews() async {
    try {
      var response = await Config.client
          .get(Uri.parse("${Config.baseUrl}${Config.getNews}"));
      var convertedJson = jsonDecode(response.body);
      return NewsModel.fromJson(convertedJson);
    } catch (e) {
      return null;
    }
  }

  static Future<dynamic> getCoins() async {
    try {
      var response = await Config.client
          .get(Uri.parse("${Config.baseUrl}${Config.getCoins}"));
      var convertedJson = jsonDecode(response.body);
      return CoinsModel.fromJson(convertedJson);
    } catch (e) {
      return null;
    }
  }
}
