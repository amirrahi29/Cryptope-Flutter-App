class UserProfileModel {
  UserProfileModel({
    this.status,
    this.responseCode,
    this.responseData,
  });

  String? status;
  int? responseCode;
  ResponseData? responseData;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => UserProfileModel(
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
    this.name,
    this.email,
    this.image,
    this.walletAddress,
    this.connectedSocialMediaAccount,
  });

  String? name;
  String? email;
  String? image;
  String? walletAddress;
  String? connectedSocialMediaAccount;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
    name: json["name"],
    email: json["email"],
    image: json["image"],
    walletAddress: json["wallet_address"],
    connectedSocialMediaAccount: json["connected_social_media_account"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "image": image,
    "wallet_address": walletAddress,
    "connected_social_media_account": connectedSocialMediaAccount,
  };
}
