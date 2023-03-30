class EventModel {
  EventModel({
    this.status,
    this.responseCode,
    this.responseData,
  });

  String? status;
  int? responseCode;
  ResponseData? responseData;

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
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
    required this.eventList,
  });

  List<EventList> eventList;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
    eventList: List<EventList>.from(json["eventList"].map((x) => EventList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "eventList": List<dynamic>.from(eventList.map((x) => x.toJson())),
  };
}

class EventList {
  EventList({
    required this.id,
    required this.eventName,
    required this.eventType,
    required this.eventDescription,
    required this.eventDate,
    required this.eventStatus,
    required this.eventFeatured,
    required this.image,
  });

  String id;
  String eventName;
  String eventType;
  String eventDescription;
  DateTime eventDate;
  String eventStatus;
  String eventFeatured;
  String image;

  factory EventList.fromJson(Map<String, dynamic> json) => EventList(
    id: json["id"],
    eventName: json["event_name"],
    eventType: json["event_type"],
    eventDescription: json["event_description"],
    eventDate: DateTime.parse(json["event_date"]),
    eventStatus: json["event_status"],
    eventFeatured: json["event_featured"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "event_name": eventName,
    "event_type": eventType,
    "event_description": eventDescription,
    "event_date": "${eventDate.year.toString().padLeft(4, '0')}-${eventDate.month.toString().padLeft(2, '0')}-${eventDate.day.toString().padLeft(2, '0')}",
    "event_status": eventStatus,
    "event_featured": eventFeatured,
    "image": image,
  };

  String toString(){
    return 'event_name:$eventName';
  }
}
