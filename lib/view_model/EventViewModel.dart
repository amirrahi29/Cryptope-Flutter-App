import 'package:cryptope/model/EventModel.dart';
import 'package:cryptope/respositories/EventRepository.dart';
import 'package:get/get.dart';

class EventViewModel extends GetxController{

  final eventViewModel = EventModel().obs;
  final eventList = <EventList>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getEvents();
  }
  Future<void> getEvents()async{
    var response = await EventRepository.getEvents();
    if(response.status == 'true'){
      eventViewModel.value = response;
      eventList.value = response.responseData.eventList;
      print(eventList);
    }
  }
}