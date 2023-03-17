import 'package:cryptope/Cryptope/presentation/pages/BottomPages/ContentPage.dart';
import 'package:cryptope/Cryptope/presentation/pages/BottomPages/ProfilePage.dart';
import 'package:cryptope/Cryptope/presentation/pages/IntroOnBoardingPage.dart';
import 'package:cryptope/CustomClasses/routes/OnPageGenerateRoute.dart';
import 'package:flutter/material.dart';
import 'CustomClasses/AllTitles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AllTitles.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: OnPageGenerateRoute.route,
      initialRoute: '/',
      routes: {
        "/": (context) {
          return IntroOnBoardingPage();
        }
      },
    );
  }
}
