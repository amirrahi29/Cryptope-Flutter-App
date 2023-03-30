import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/CustomClasses/Config.dart';
import 'package:cryptope/CustomClasses/routes/PageConstants.dart';
import 'package:cryptope/model/UserModel.dart';
import 'package:cryptope/respositories/UserRepository.dart';
import 'package:cryptope/view/pages/DashboardPage.dart';
import 'package:cryptope/view_model/RootViewModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController{

  final rootViewModel = Get.put(RootViewModel());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  User? user;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    // rootViewModel.setLoading(true);
    // GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    // GoogleSignInAuthentication googleSignInAuthentication =
    // await googleSignInAccount!.authentication;
    // AuthCredential authCredential = GoogleAuthProvider.credential(
    //     idToken: googleSignInAuthentication.idToken,
    //     accessToken: googleSignInAuthentication.accessToken);
    // UserCredential authResult = await _auth.signInWithCredential(authCredential);
    // user = _auth.currentUser;
    // if(user !=null){
    //   rootViewModel.setLoading(false);
    //   final userModel = UserModel(
    //     idToken: DateTime.now().microsecondsSinceEpoch.toString(),
    //     typeOfLogin: "google",
    //     name: user!.displayName,
    //     email: user!.email,
    //     profileImage: user!.photoURL,
    //   );
    //   final response = await UserRepository.signInSignUp(userModel);
    //   print(response);
    //   if(response.status == "true" && response.responseCode == Config.twoHundredStatusCode){
    //     Get.snackbar("Hey, ${user!.displayName}", response.responseMessage);
    //     Get.offAll(const DashboardPage());
    //   }else if(response.status == "false" && response.responseCode == Config.twoHundredStatusCode){
    //     Get.snackbar("Hey, ${user!.displayName}", response.responseMessage);
    //   }else{
    //     Get.snackbar("Hey, ${user!.displayName}", AllTitles.somethingWentWrong);
    //   }
    // }
    Navigator.pushNamed(context, PageConstants.dashboardPage);
  }

}