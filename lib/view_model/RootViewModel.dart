import 'package:cryptope/respositories/UserRepository.dart';
import 'package:get/get.dart';

class RootViewModel extends GetxController{
  var isLoading = false.obs;

  setLoading(bool loading){
    isLoading.value = loading;
  }
}