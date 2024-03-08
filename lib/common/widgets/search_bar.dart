import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';

class SearchBarWidget extends StatelessWidget {
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final double? width;
  final double? height;
  const SearchBarWidget({
    super.key,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 36,
      // alignment: Alignment.centerRight,
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        // textAlign: TextAlign.center,

        decoration: InputDecoration(
          // labelText: "بحث",
          label: LinerTextWidget(
            "بحث",
            color: const Color(0xff000000).withOpacity(0.38),
            size: 16,
          ).paddingSymmetric(horizontal: 10),
          fillColor: Colors.white,
          prefixIcon: SvgPicture.asset(
            "assets/icons/Search icon.svg",
          ),
          prefixIconConstraints: const BoxConstraints.expand(width: 33, height: 33),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
