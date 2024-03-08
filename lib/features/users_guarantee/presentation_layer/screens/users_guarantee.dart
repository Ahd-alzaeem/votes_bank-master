import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/appbar.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/features/users_guarantee/presentation_layer/widgets/user_guarantee.dart';

class UsersGuaranteeScreen extends StatelessWidget {
  const UsersGuaranteeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "ضمانات المستخدمين",
        haveDrawer: false,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LinerTextWidget(
                "مجموع الضمانات 1700",
                color: Color(0xff2E86DF),
                size: 20,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return const UserGuaranteeWidget();
                  })
            ],
          ).paddingSymmetric(horizontal: 20),
        ),
      ),
    );
  }
}
