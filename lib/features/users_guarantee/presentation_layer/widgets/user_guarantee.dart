import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';
import 'package:votes_bank/core/routing/routing_manager.dart';

class UserGuaranteeWidget extends StatelessWidget {
  const UserGuaranteeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: Get.width,
      height: 147,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.lightBorder),
        color: AppColor.cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_profile_pic.png"),
          ),
          LinerTextWidget(
            "343 ناخب",
            color: AppColor.textColor,
            size: 20,
          ),
          const LinerTextWidget(
            "خالد محمد الدوسري",
            color: Color(0xff2E86DF),
            size: 20,
          )
        ],
      ),
    ).onTap(() {
      RoutingManager.to(RouteName.usersGuaranteeDetails);
    });
  }
}
