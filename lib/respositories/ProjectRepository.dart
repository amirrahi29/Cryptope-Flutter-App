import 'dart:convert';
import 'package:cryptope/CustomClasses/Config.dart';
import 'package:cryptope/model/ProjectModel.dart';

class ProjectRepository{

  static Future<dynamic> getProjects() async {
    try {
      var response = await Config.client
          .get(Uri.parse("${Config.baseUrl}${Config.getProjects}"));
      var convertedJson = jsonDecode(response.body);
      return convertedJson;
    } catch (e) {
      return null;
    }
  }

}

