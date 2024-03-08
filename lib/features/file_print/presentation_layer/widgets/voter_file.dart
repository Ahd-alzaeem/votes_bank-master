import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';
import 'package:votes_bank/core/routing/routing_manager.dart';

class VoterFileWidget extends StatelessWidget {
  const VoterFileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 79,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LinerTextWidget(
                "1 - ملف الناخبين المعتمدين",
                color: Color(0xff2E86DF),
                size: 20,
              ),
              SvgPicture.asset("assets/icons/Delete.svg"),
            ],
          ),
          LinerTextWidget(
            "12-03-2022 -12322 ناخب-10/10 ملف-غير مكتمل",
            color: AppColor.textColor,
          )
        ],
      ).paddingSymmetric(horizontal: 20),
    ).onTap(() {
      RoutingManager.to(RouteName.print);
    });
  }
}
