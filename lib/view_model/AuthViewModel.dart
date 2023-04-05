import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/CustomClasses/Config.dart';
import 'package:cryptope/respositories/UserRepository.dart';
import 'package:cryptope/view/pages/DashboardPage.dart';
import 'package:cryptope/view_model/RootViewModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:twitter_login/entity/auth_result.dart';
import 'dart:async';
import 'package:twitter_login/twitter_login.dart';

import '../model/UserModel.dart';

class AuthViewModel extends GetxController {
  final rootViewModel = Get.put(RootViewModel());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  User? user;
  Map _userObj = {};

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    rootViewModel.setLoading(true);
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    UserCredential authResult =
        await _auth.signInWithCredential(authCredential);
    user = _auth.currentUser;
    if (user != null) {
      submitAuth(user!.displayName,user!.email,user!.photoURL);
    }
  }

  Future<void> signInWithFacebook(BuildContext context) async {
    FacebookAuth.instance
        .login(permissions: ["public_profile", "email"]).then((value) {
      FacebookAuth.instance.getUserData().then((userData) {
        _userObj = userData;
        print("Name: " + _userObj["name"]);
        print("My E-mail: " + _userObj["email"]);
        print("after facebook: ${_userObj}");
      });
    }).catchError((error) {
      print(error.toString());
    });
  }

  Future<void> signInWithTwitter(BuildContext context) async {
    final twitterLogin = TwitterLogin(
      apiKey: 'togFhiSXhObCP7BkNy2HGzTqL',
      apiSecretKey: 'TSDMyg2uTvUB1FLePJ7nwTJdk2gjkloD2HzmmEk5lI0bQxqb7d',
      redirectURI: 'flutter-twitter-login://',
    );

// Trigger Twitter login
    final result = await twitterLogin.login();
    print("result: ${result}");
    if (result.status == TwitterLoginStatus.loggedIn) {
      // User is logged in, you can now access their Twitter data
      print('Logged in successfully with user ID: ${result.user!.name}');
      print('Logged in successfully with user ID: ${result.user!.id}');
      print('Logged in successfully with user ID: ${result.user!.thumbnailImage}');

      submitAuth(result.user!.name,result.user!.id.toString(),result.user!.thumbnailImage);

    } else if (result.status == TwitterLoginStatus.cancelledByUser) {
      // User cancelled the login
      print('Twitter login cancelled by user');
    } else {
      // An error occurred during login
      print('Twitter login failed: ${result.errorMessage}');
    }
  }

  Future<void> signInWithApple(BuildContext context) async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        // TODO: Set the `clientId` and `redirectUri` arguments to the values you entered in the Apple Developer portal during the setup
        clientId: 'de.lunaone.flutter.signinwithappleexample.service',

        redirectUri: Uri.parse(
          'https://flutter-sign-in-with-apple-example.glitch.me/callbacks/sign_in_with_apple',
        ),
      ),
      // TODO: Remove these if you have no need for them
      nonce: 'example-nonce',
      state: 'example-state',
    );

    // ignore: avoid_print
    print(credential);
  }

  Future<void> submitAuth(String? name, String? email, String? photo)async{
    rootViewModel.setLoading(false);
    final userModel = UserModel(
      idToken: DateTime.now().microsecondsSinceEpoch.toString(),
      typeOfLogin: "google",
      name: name,
      email: email,
      profileImage: photo,
    );
    final response = await UserRepository.signInSignUp(userModel);
    print("convertedJson: $response");
    if (response['status'] == "true" &&
        response['responseCode'] == Config.twoHundredStatusCode) {

      //save userId
      Config.saveUserId(response['user_id']);

      Get.snackbar("Hey, ${user!.displayName}", response['responseMessage']);
      Get.offAll(const DashboardPage());
    } else if (response['status'] == "false" &&
        response['responseCode'] == Config.twoHundredStatusCode) {
      Get.snackbar("Hey, ${user!.displayName}", response['responseMessage']);
    } else {
      Get.snackbar("Hey, ${user!.displayName}", AllTitles.somethingWentWrong);
    }
  }

}
