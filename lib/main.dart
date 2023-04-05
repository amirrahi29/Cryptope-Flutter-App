import 'package:cryptope/CustomClasses/routes/OnPageGenerateRoute.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'CustomClasses/AllTitles.dart';
import 'view/pages/IntroOnBoardingPage.dart';
import 'view/pages/SplashPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AllTitles.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: OnPageGenerateRoute.route,
      initialRoute: '/',
      routes: {
        "/": (context) {
          return const SplashPage();
        }
      },
    );
  }
}
