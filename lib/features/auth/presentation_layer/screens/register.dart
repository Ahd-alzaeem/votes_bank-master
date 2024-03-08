import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/button.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/common/widgets/text_filed.dart';
import 'package:votes_bank/core/const/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                "تسجيل حساب جديد",
                size: 24,
              ),
              const LinerTextWidget("أهلا بك في بنك الأصوات , أدخل البيانات المطلوبة لإنشاء حسابك... "),
              const LinerTextWidget(
                "الإسم",
                color: Colors.black,
              ).paddingOnly(top: 20),
              TextFiledWidget(
                onChanged: (value) {},
              ),
              const LinerTextWidget(
                "البريد الإلكتروني",
                color: Colors.black,
              ).paddingOnly(top: 20),
              TextFiledWidget(
                onChanged: (value) {},
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LinerTextWidget(
                    "كلمة السر",
                    color: Colors.black,
                  ),
                ],
              ).paddingOnly(top: 20),
              TextFiledWidget(
                onChanged: (value) {},
              ),
              ButtonWidget(
                title: "تسجيل الحساب",
                onTap: () {},
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
                    "أو التسجيل بـ",
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
              ).paddingOnly(bottom: 10),
            ],
          ).paddingOnly(top: 30).paddingSymmetric(horizontal: 20),
        ),
      ),
    ).makeSafeArea();
  }
}
