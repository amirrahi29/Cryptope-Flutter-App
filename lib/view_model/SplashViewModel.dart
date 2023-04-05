import 'package:cryptope/CustomClasses/Config.dart';
import 'package:cryptope/view/pages/AuthPages/SignInPage.dart';
import 'package:cryptope/view/pages/DashboardPage.dart';
import 'package:cryptope/view/pages/IntroOnBoardingPage.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    launchScreen();
  }

  Future<void> launchScreen()async{
    var userId = await Config.getUserId();
    Future.delayed(Duration(seconds: 3),(){
      if(userId != null){
        Get.offAll(DashboardPage());
      }else{
        Get.offAll(IntroOnBoardingPage());
      }
    });
  }

}