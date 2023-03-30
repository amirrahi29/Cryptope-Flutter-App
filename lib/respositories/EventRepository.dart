import 'dart:convert';
import 'package:cryptope/CustomClasses/Config.dart';
import 'package:cryptope/model/EventModel.dart';

class EventRepository{

  static Future<dynamic> getEvents()async{
    try {
      var response = await Config.client.get(
          Uri.parse("${Config.baseUrl}${Config.getEvents}"));
      var convertedJson = jsonDecode(response.body);
      return EventModel.fromJson(convertedJson);
    } catch (e) {
      return null;
    }
  }

}