import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/core/const/constant.dart';

class TextFiledWidget extends StatelessWidget {
  final void Function(String)? onChanged;
  final double? width;
  final double? height;
  const TextFiledWidget({
    super.key,
    required this.onChanged,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 37,
      // alignment: Alignment.centerRight,
      child: TextFormField(
        onChanged: onChanged,
        // textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBorder),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBorder),
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBorder),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBorder),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
