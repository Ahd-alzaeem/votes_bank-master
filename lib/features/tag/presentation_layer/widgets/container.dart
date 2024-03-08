import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/core/const/constant.dart';

class ContainerWidget extends StatelessWidget {
  final double? height;
  final Widget child;
  final AlignmentGeometry? alignment;
  const ContainerWidget({super.key, this.height, required this.child, this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment ?? Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: Get.width,
      height: height ?? 41,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white, border: Border.all(color: AppColor.lightBorder)),
      child: child,
    );
  }
}
