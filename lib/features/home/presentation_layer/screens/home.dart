import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/appbar.dart';
import 'package:votes_bank/common/widgets/drawer.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';
import 'package:votes_bank/features/home/presentation_layer/widgets/big_card.dart';
import 'package:votes_bank/features/home/presentation_layer/widgets/small_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: SvgPicture.asset("assets/icons/Operations fab btn.svg"),
      appBar: AppBarWidget(
        title: "حملة سعد الحمد",
        haveDrawer: true,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinerTextWidget(
                "343445 ناخب",
                size: 24,
                color: AppColor.black,
              ),
              const SmallCardWidget().paddingSymmetric(vertical: 10),
              ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return const BigCardWidget();
                  })
            ],
          ).paddingSymmetric(horizontal: 20),
        ),
      ),
    );
  }
}
