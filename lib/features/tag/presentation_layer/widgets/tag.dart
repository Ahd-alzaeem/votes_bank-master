import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/bottom_sheet.dart';
import 'package:votes_bank/common/widgets/button_in_bottom_sheet.dart';
import 'package:votes_bank/common/widgets/dialog.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';
import 'package:votes_bank/features/tag/presentation_layer/widgets/container.dart';
import 'package:votes_bank/features/tag/presentation_layer/widgets/select_color.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: Get.width,
      height: 156,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.cardColor,
        border: Border.all(
          color: AppColor.cardBorder,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const LinerTextWidget(
                "تم زيارتهم",
                color: Color(0xff169F2C),
                size: 18,
                decorationColor: Color(0xff169F2C),
                textDecoration: TextDecoration.underline,
              ).onTap(() {
                CustomBottomSheet.tagBottomSheet(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LinerTextWidget(
                        "تعديل الوسم !!",
                        color: AppColor.textColor,
                        size: 20,
                      ),
                      const ContainerWidget(
                        child: LinerTextWidget(
                          "تم زيارتهم",
                          color: Color(0xff395767),
                          size: 20,
                        ),
                      ),
                      const ContainerWidget(
                        child: SelectColorWidget(),
                      ).paddingSymmetric(vertical: 10),
                      const ContainerWidget(
                        height: 140,
                        child: LtTextWidget(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص ",
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
              }).expanded(7),
              const LinerTextWidget(
                "288",
                textDecoration: TextDecoration.underline,
                size: 20,
                color: Color(0xff3D81D0),
                decorationColor: Color(0xff3D81D0),
              ).expanded(2),
              SvgPicture.asset("assets/icons/Delete.svg").onTap(() {
                CustomDialog.confirmDialog(
                  context,
                  onPressed: () {},
                );
              }).expanded(1)
            ],
          ),
          const LtTextWidget(
              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص ")
        ],
      ).paddingSymmetric(horizontal: 20),
    );
  }
}
