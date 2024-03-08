import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/appbar_with_search.dart';
import 'package:votes_bank/common/widgets/text_filed.dart';
import 'package:votes_bank/features/tag/presentation_layer/widgets/tag.dart';

import '../../../../common/widgets/bottom_sheet.dart';
import '../../../../common/widgets/button_in_bottom_sheet.dart';
import '../../../../common/widgets/text.dart';
import '../../../../core/const/constant.dart';
import '../widgets/container.dart';
import '../widgets/select_color.dart';

class TagScreen extends StatelessWidget {
  const TagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSearch(
        title: "الوسوم",
        haveIcon: true,
        onTap: () {
          CustomBottomSheet.tagBottomSheet(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinerTextWidget(
                  "إضافه وسم !!",
                  color: AppColor.textColor,
                  size: 20,
                ),
                TextFiledWidget(
                  onChanged: (value) {},
                ),
                const ContainerWidget(
                  child: SelectColorWidget(),
                ).paddingSymmetric(vertical: 10),
                const ContainerWidget(
                  height: 140,
                  alignment: Alignment.topRight,
                  child: LtTextWidget(
                    "التفاصيل",
                    color: Color(0xff727272),
                    size: 18,
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: ButtonInButtonSheetWidget(
                      onTap: () {},
                      title: "حفظ",
                    ),
                  ),
                )
              ],
            ).paddingSymmetric(vertical: 30, horizontal: 20),
          );
        },
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, index) {
              return const TagWidget();
            }),
      ),
    );
  }
}
