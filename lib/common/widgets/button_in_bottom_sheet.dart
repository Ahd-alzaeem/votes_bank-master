import 'package:flutter/material.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';

class ButtonInButtonSheetWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? borderColor;
  void Function()? onTap;
  final double? width;
  ButtonInButtonSheetWidget({
    super.key,
    required this.title,
    this.color,
    this.borderColor,
    required this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xffE7ECF0),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor.borderColor,
        ),
      ),
      child: LinerTextWidget(
        title,
        color: AppColor.darkBlue,
        size: 19,
      ),
    ).onTap(
      () {
        onTap?.call();
      },
    );
  }
}
