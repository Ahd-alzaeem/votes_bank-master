import 'package:flutter/material.dart';
import 'package:votes_bank/core/const/constant.dart';

class BoldTextWidget extends StatelessWidget {
  final String title;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;

  const BoldTextWidget(this.title, {super.key, this.size, this.fontWeight, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: size ?? 22,
          fontFamily: AppFont.bold,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColor.black),
    );
  }
}

class LinerTextWidget extends StatelessWidget {
  final String title;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final Color? decorationColor;

  const LinerTextWidget(this.title,
      {super.key, this.size, this.fontWeight, this.color, this.textAlign, this.textDecoration, this.decorationColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size ?? 18,
        fontFamily: AppFont.liner,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColor.blueGray,
        decoration: textDecoration,
        decorationColor: decorationColor,
      ),
    );
  }
}

class LtTextWidget extends StatelessWidget {
  final String title;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;

  const LtTextWidget(this.title, {super.key, this.size, this.fontWeight, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size ?? 18,
        fontFamily: AppFont.lt,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? const Color(0xff727272),
      ),
    );
  }
}
