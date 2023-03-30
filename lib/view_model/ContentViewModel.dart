import 'package:cryptope/model/CoinsModel.dart';
import 'package:cryptope/model/GifsModel.dart';
import 'package:cryptope/model/NewsModel.dart';
import 'package:cryptope/respositories/ContentRepository.dart';
import 'package:get/get.dart';

class ContentViewModel extends GetxController{

  //gif
  final gifViewModel = GifsModel().obs;
  final gifList = <GifList>[].obs;
  //news
  final newsViewModel = NewsModel().obs;
  final newsList = <NewsList>[].obs;
  //coins
  final coinsViewModel = CoinsModel().obs;
  final coinsList = <CoinList>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getGifs();
    getNews();
    getCoins();
  }
  Future<void> getGifs()async{
    var response = await ContentRepository.getGifs();
    if(response.status == 'true'){
      gifViewModel.value = response;
      gifList.value = response.responseData.gifList;
    }
  }
  Future<void> getNews()async{
    var response = await ContentRepository.getNews();
    if(response.status == 'true'){
      newsViewModel.value = response;
      newsList.value = response.responseData.newsList;
    }
  }
  Future<void> getCoins()async{
    var response = await ContentRepository.getCoins();
    if(response.status == 'true'){
      coinsViewModel.value = response;
      coinsList.value = response.responseData.coinList;
    }
  }
}