import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/button.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/common/widgets/text_filed.dart';
import 'package:votes_bank/core/const/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:votes_bank/core/routing/routing_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.red,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BoldTextWidget(
                "تسجيل الدخول",
                size: 24,
              ),
              const LinerTextWidget("أهلا بك في بنك الأصوات, أدخل بيانات حسابك... "),
              const LinerTextWidget(
                "البريد الإلكتروني",
                color: Colors.black,
              ).paddingOnly(top: 20),
              TextFiledWidget(
                onChanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LinerTextWidget(
                    "كلمة السر",
                    color: Colors.black,
                  ),
                  BoldTextWidget(
                    "نسيت كلمة السر؟",
                    color: AppColor.darkBlue,
                    size: 14,
                  ),
                ],
              ).paddingOnly(top: 20),
              TextFiledWidget(
                onChanged: (value) {},
              ),
              ButtonWidget(
                title: "تسجيل الدخول",
                onTap: () {
                  RoutingManager.offAll(RouteName.home);
                },
              ).paddingOnly(top: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    color: AppColor.divider,
                    height: 1,
                  ),
                  LinerTextWidget(
                    "أو الدخول بـ",
                    color: AppColor.divider,
                    size: 16,
                  ).paddingSymmetric(horizontal: 30),
                  Container(
                    width: 100,
                    color: AppColor.divider,
                    height: 1,
                  )
                ],
              ).paddingOnly(top: 20, bottom: 20),
              ButtonWidget(
                color: AppColor.gray,
                borderColor: AppColor.borderColor,
                widget: SvgPicture.asset("assets/icons/Google logo.svg"),
                onTap: () {},
              ),
              ButtonWidget(
                color: AppColor.gray,
                borderColor: AppColor.borderColor,
                widget: SvgPicture.asset("assets/icons/Microsoft logo.svg"),
                onTap: () {},
              ).paddingSymmetric(vertical: 20),
              ButtonWidget(
                color: AppColor.gray,
                borderColor: AppColor.borderColor,
                widget: SvgPicture.asset("assets/icons/Apple logo.svg"),
                onTap: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BoldTextWidget(
                    " ليس لديك حساب؟",
                    size: 16,
                  ),
                  BoldTextWidget(
                    "  سجل الآن",
                    size: 16,
                    color: AppColor.blueGray,
                  ).onTap(() {
                    log("message");
                    RoutingManager.to(RouteName.register);
                  }),
                ],
              ).paddingOnly(top: 10)
            ],
          ).paddingOnly(top: 30).paddingSymmetric(horizontal: 20),
        ),
      ),
    ).makeSafeArea();
  }
}
