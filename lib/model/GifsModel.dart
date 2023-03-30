class GifsModel {
  GifsModel({
    this.status,
    this.responseCode,
    this.responseData,
  });

  String? status;
  int? responseCode;
  ResponseData? responseData;

  factory GifsModel.fromJson(Map<String, dynamic> json) => GifsModel(
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
    this.gifList,
  });

  List<GifList>? gifList;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
    gifList: List<GifList>.from(json["gifList"].map((x) => GifList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "gifList": List<dynamic>.from(gifList!.map((x) => x.toJson())),
  };
}

class GifList {
  GifList({
    this.id,
    this.image,
  });

  String? id;
  String? image;

  factory GifList.fromJson(Map<String, dynamic> json) => GifList(
    id: json["id"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
  };
}
