import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';
import 'package:votes_bank/core/routing/routing_manager.dart';

class CustomDialog {
  static confirmDialog(BuildContext context, {required void Function()? onPressed}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // Adjust the border radius as desired
          ),
          title: LinerTextWidget(
            "حذف الوسم ؟",
            color: AppColor.textColor,
            size: 20,
          ),
          content: LinerTextWidget(
            "حذف هذا الوسم سيترتب عليه حذف هذا الوسم من كل اسم ناخب تم تعيينه له.",
            color: AppColor.textColor,
            size: 18,
          ),
          actions: [
            LinerTextWidget(
              "حذف",
              color: AppColor.textColor,
              size: 20,
            ).onTap(() {
              RoutingManager.back();
            }).paddingSymmetric(horizontal: 20),
            LinerTextWidget(
              "إلغاء",
              color: AppColor.textColor,
              size: 20,
            ).onTap(() {
              onPressed?.call();
            })
            // TextButton(
            //   onPressed: () => RoutingManager.back(),
            //   child: const Text('Cancel'),
            // ),
            // ElevatedButton(
            //   onPressed: onPressed,
            //   child: const Text('Delete'),
            // ),
          ],
        );
      },
    );
  }
}
