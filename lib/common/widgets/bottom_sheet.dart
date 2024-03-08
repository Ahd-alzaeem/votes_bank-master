import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheet {
  static void tagBottomSheet(Widget child) {
    Get.bottomSheet(
      BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return Container(
            width: Get.width,
            height: Get.height * 0.6,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: child,
          );
        },
      ),
    );
  }
}
