class CoinsModel {
  CoinsModel({
    this.status,
    this.responseCode,
    this.responseData,
  });

  String? status;
  int? responseCode;
  ResponseData? responseData;

  factory CoinsModel.fromJson(Map<String, dynamic> json) => CoinsModel(
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
    this.coinList,
  });

  List<CoinList>? coinList;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
    coinList: List<CoinList>.from(json["coinList"].map((x) => CoinList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "coinList": List<dynamic>.from(coinList!.map((x) => x.toJson())),
  };
}

class CoinList {
  CoinList({
    this.id,
    this.image,
  });

  String? id;
  String? image;

  factory CoinList.fromJson(Map<String, dynamic> json) => CoinList(
    id: json["id"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
  };
}
