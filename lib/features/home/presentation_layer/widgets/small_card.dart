import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';

class SmallCardWidget extends StatelessWidget {
  const SmallCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width,
      height: 85,
      decoration: BoxDecoration(
        color: AppColor.cardColor,
        border: Border.all(color: AppColor.cardBorder),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinerTextWidget(
                "الرابعة - شمال غرب الصليبيخات - 123 -",
                size: 16,
                color: AppColor.textColor,
              ),
              LinerTextWidget(
                " موقوف",
                size: 16,
                color: AppColor.red,
              ),
              LinerTextWidget(
                "  34",
                size: 16,
                color: AppColor.textColor,
              ),
            ],
          ),
          LinerTextWidget(
            "عبيد محمد سالم خالد المطيري",
            color: AppColor.black,
            size: 24,
          )
        ],
      ).paddingSymmetric(vertical: 10),
    );
  }
}
