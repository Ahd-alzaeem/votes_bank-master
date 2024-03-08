import 'package:flutter/material.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';

class ButtonWidget extends StatelessWidget {
  String? title;
  Widget? widget;
  final Color? color;
  final Color? borderColor;
  void Function()? onTap;
  ButtonWidget({super.key, this.title, this.widget, this.color, this.borderColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
          color: color ?? AppColor.darkBlue,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor ?? Colors.white)),
      child: widget ??
          BoldTextWidget(
            title ?? "",
            color: Colors.white,
            size: 20,
          ),
    ).onTap(
      () {
        onTap?.call();
      },
    );
  }
}
