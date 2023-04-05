
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
  List<ConnectedSocialMediaAccount>? connectedSocialMediaAccount;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
    name: json["name"],
    email: json["email"],
    image: json["image"],
    walletAddress: json["wallet_address"],
    connectedSocialMediaAccount: List<ConnectedSocialMediaAccount>.from(json["connected_social_media_account"].map((x) => ConnectedSocialMediaAccount.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "image": image,
    "wallet_address": walletAddress,
    "connected_social_media_account": List<dynamic>.from(connectedSocialMediaAccount!.map((x) => x.toJson())),
  };
}

class ConnectedSocialMediaAccount {
  ConnectedSocialMediaAccount({
    this.loggedInBy,
    this.createdAt,
  });

  String? loggedInBy;
  DateTime? createdAt;

  factory ConnectedSocialMediaAccount.fromJson(Map<String, dynamic> json) => ConnectedSocialMediaAccount(
    loggedInBy: json["logged_in_by"],
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "logged_in_by": loggedInBy,
    "created_at": createdAt!.toIso8601String(),
  };
}
