import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/core/routing/routing_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 1),
      () {
        RoutingManager.offAll(RouteName.login);
      },
    );
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        alignment: Alignment.center,
        child: SvgPicture.asset("assets/icons/Votes back logo group.svg"),
      ),
    );
  }
}
