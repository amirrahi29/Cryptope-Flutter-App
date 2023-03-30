class NewsModel {
  NewsModel({
    this.status,
    this.responseCode,
    this.responseData,
  });

  String? status;
  int? responseCode;
  ResponseData? responseData;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
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
    this.newsList,
  });

  List<NewsList>? newsList;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
    newsList: List<NewsList>.from(json["newsList"].map((x) => NewsList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "newsList": List<dynamic>.from(newsList!.map((x) => x.toJson())),
  };
}

class NewsList {
  NewsList({
    this.id,
    this.image,
  });

  String? id;
  String? image;

  factory NewsList.fromJson(Map<String, dynamic> json) => NewsList(
    id: json["id"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
  };
}
