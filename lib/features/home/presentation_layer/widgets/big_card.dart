import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/text.dart';
import '../../../../core/const/constant.dart';

class BigCardWidget extends StatelessWidget {
  const BigCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.center,
      width: Get.width,
      height: Get.height * .58,
      decoration: BoxDecoration(
        color: AppColor.cardColor,
        border: Border.all(color: AppColor.cardBorder),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: -0.8,
            child: LinerTextWidget(
              "بنك الأصوات",
              size: 50,
              color: const Color(0xff2F4963).withOpacity(0.2),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    " 34 - ذكر نص",
                    size: 16,
                    color: AppColor.textColor,
                  ),
                ],
              ),
              LinerTextWidget(
                "تجربة تمدد نص تجربة تمدد",
                size: 16,
                color: AppColor.textColor,
              ),
              LinerTextWidget(
                "عبيد محمد سالم خالد المطيري نص تجربة ",
                color: AppColor.black,
                size: 22,
              ),
              LinerTextWidget(
                "تمدد نص تجربة تمدد",
                color: AppColor.black,
                size: 22,
              ),
              LinerTextWidget(
                "مطير - بريه - واصل - الدياحين - البخيت ",
                size: 18,
                color: AppColor.navy,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinerTextWidget(
                    "#ضمانات خالد",
                    color: Color(0xffFF8400),
                  ),
                  LinerTextWidget(
                    "#ضمانات خالد",
                    color: Color(0xffBD00FF),
                  ),
                  LinerTextWidget(
                    "#ضمانات خالد",
                    color: Color(0xff318B11),
                  ),
                  // LinerTextWidget(
                  //   "#ضمانات خالد",
                  //   color: Color(0xffFF0F00),
                  // ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinerTextWidget(
                    "#ضمانات خالد",
                    color: Color(0xff2770B4),
                  ),
                ],
              ),
              LinerTextWidget(
                "العنوان: الاندلس قطعة 4 شارع 9 منزل 12 - نص تجربة",
                color: AppColor.navy,
              ),
              LinerTextWidget(
                "تمدد نص تجربة تمدد نص تجربة تمدد",
                color: AppColor.navy,
              ),
              LinerTextWidget(
                "الوظيفة:موظف-المرجع:23232342",
                color: AppColor.navy,
              ),
              LinerTextWidget(
                "تاريخ القيد:12-1-2012- تاريخ الميلاد: 12-1-2012",
                color: AppColor.navy,
              ),
              LinerTextWidget(
                "اللجنة: 11 فرعية - مكان التصويت: ",
                color: AppColor.navy,
              ),
              LinerTextWidget(
                "مدرسة علي عبدالمحسن الصقلاوي الابتدائية للبنين - ذكور نص تجربة تمدد",
                color: AppColor.navy,
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/Tag_IconButton.svg"),
                  SvgPicture.asset("assets/icons/Dhaman.svg"),
                  SvgPicture.asset("assets/icons/Relation.svg"),
                  SvgPicture.asset("assets/icons/Edit.svg")
                ],
              ).paddingSymmetric(horizontal: 60)
            ],
          ).paddingSymmetric(horizontal: 5)
        ],
      ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         LinerTextWidget(
      //           "الرابعة - شمال غرب الصليبيخات - 123 -",
      //           size: 16,
      //           color: AppColor.textColor,
      //         ),
      //         LinerTextWidget(
      //           " موقوف",
      //           size: 16,
      //           color: AppColor.red,
      //         ),
      //         LinerTextWidget(
      //           " 34 - ذكر نص",
      //           size: 16,
      //           color: AppColor.textColor,
      //         ),
      //       ],
      //     ),
      //     LinerTextWidget(
      //       "تجربة تمدد نص تجربة تمدد",
      //       size: 16,
      //       color: AppColor.textColor,
      //     ),
      //     LinerTextWidget(
      //       "عبيد محمد سالم خالد المطيري نص تجربة ",
      //       color: AppColor.black,
      //     ),
      //     LinerTextWidget(
      //       "تمدد نص تجربة تمدد",
      //       color: AppColor.black,
      //     ),
      //     LinerTextWidget(
      //       "مطير - بريه - واصل - الدياحين - البخيت ",
      //       size: 18,
      //       color: AppColor.navy,
      //     ),
      //     const Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         LinerTextWidget(
      //           "#ضمانات خالد",
      //           color: Color(0xffFF8400),
      //         ),
      //         LinerTextWidget(
      //           "#ضمانات خالد",
      //           color: Color(0xffBD00FF),
      //         ),
      //         LinerTextWidget(
      //           "#ضمانات خالد",
      //           color: Color(0xff318B11),
      //         ),
      //         LinerTextWidget(
      //           "#ضمانات خالد",
      //           color: Color(0xffFF0F00),
      //         ),
      //       ],
      //     ),
      //     const Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         LinerTextWidget(
      //           "#ضمانات خالد",
      //           color: Color(0xff2770B4),
      //         ),
      //       ],
      //     ),
      //     LinerTextWidget(
      //       "العنوان: الاندلس قطعة 4 شارع 9 منزل 12 - نص تجربة",
      //       color: AppColor.navy,
      //     ),
      //     LinerTextWidget(
      //       "تمدد نص تجربة تمدد نص تجربة تمدد",
      //       color: AppColor.navy,
      //     ),
      //     LinerTextWidget(
      //       "الوظيفة:موظف-المرجع:23232342",
      //       color: AppColor.navy,
      //     ),
      //     LinerTextWidget(
      //       "تاريخ القيد:12-1-2012- تاريخ الميلاد: 12-1-2012",
      //       color: AppColor.navy,
      //     ),
      //     LinerTextWidget(
      //       "اللجنة: 11 فرعية - مكان التصويت: ",
      //       color: AppColor.navy,
      //     ),
      //     LinerTextWidget(
      //       "مدرسة علي عبدالمحسن الصقلاوي الابتدائية للبنين - ذكور نص تجربة تمدد",
      //       color: AppColor.navy,
      //       textAlign: TextAlign.center,
      //     ),
      //   ],
      // ).paddingSymmetric(vertical: 10),
    );
  }
}
