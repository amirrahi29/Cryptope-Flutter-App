import 'package:cryptope/view/widgets/GlobalMainWidget.dart';
import 'package:cryptope/view_model/SplashViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  final splashViewModel = Get.put(SplashViewModel());

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        SingleChildScrollView(
          child: GlobalMainWidget.backgroundWidget(context),
        )
    );
  }
}
