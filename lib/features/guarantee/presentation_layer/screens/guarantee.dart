import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/appbar.dart';
import 'package:votes_bank/features/home/presentation_layer/widgets/big_card.dart';
import 'package:votes_bank/features/home/presentation_layer/widgets/small_card.dart';

import '../../../../common/widgets/text.dart';
import '../../../../core/const/constant.dart';

class GuaranteeScreen extends StatelessWidget {
  const GuaranteeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "ضمانات  مدير الحملة",
        haveDrawer: false,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              LinerTextWidget(
                "343445 ناخب",
                size: 24,
                color: AppColor.black,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    return const SmallCardWidget().paddingSymmetric(vertical: 5);
                  }),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    return const BigCardWidget().paddingSymmetric(vertical: 5);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
