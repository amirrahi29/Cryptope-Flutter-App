
class ProjectModel {
  ProjectModel({
    this.status,
    this.responseCode,
    this.responseData,
  });

  String? status;
  int? responseCode;
  ResponseData? responseData;

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
    status: json["status"],
    responseCode: json["responseCode"],
    responseData: ResponseData.fromJson(json["responseData"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "responseCode": responseCode,
    "responseData": responseData!.toJson(),
  };
}

class ResponseData {
  ResponseData({
    this.projectList,
  });

  List<ProjectList>? projectList;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
    projectList: List<ProjectList>.from(json["projectList"].map((x) => ProjectList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "projectList": List<dynamic>.from(projectList!.map((x) => x.toJson())),
  };
}

class ProjectList {
  ProjectList({
    this.id,
    this.projectName,
    this.projectDetails,
    this.projectPromoted,
    this.image,
  });

  String? id;
  String? projectName;
  String? projectDetails;
  ProjectPromoted? projectPromoted;
  String? image;

  factory ProjectList.fromJson(Map<String, dynamic> json) => ProjectList(
    id: json["id"],
    projectName: json["project_name"],
    projectDetails: json["project_details"],
    projectPromoted: projectPromotedValues.map[json["project_promoted"]]!,
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "project_name": projectName,
    "project_details": projectDetails,
    "project_promoted": projectPromotedValues.reverse[projectPromoted],
    "image": image,
  };
}

enum ProjectPromoted { PROMOTED, EMPTY }

final projectPromotedValues = EnumValues({
  "": ProjectPromoted.EMPTY,
  "Promoted": ProjectPromoted.PROMOTED
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
