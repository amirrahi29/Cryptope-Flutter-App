import 'package:cryptope/model/UserProfileModel.dart';
import 'package:cryptope/respositories/UserRepository.dart';
import 'package:get/get.dart';

class UserViewModel extends GetxController{

  final profileViewModel = UserProfileModel().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserProfile();
  }
  Future<void> getUserProfile()async{
    var response = await UserRepository.getUserProfile();
    if(response.status == 'true'){
      profileViewModel.value = response;
    }
  }

}