import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/appbar.dart';
import 'package:votes_bank/common/widgets/text.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "الطباعة",
        haveDrawer: false,
        icon: SvgPicture.asset("assets/icons/Print.svg"),
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LinerTextWidget(
                "ضمانات احمد خالد في الجبلان و الدياحين",
                size: 20,
                color: Colors.black,
              ),
              Image.asset("assets/images/print_file.png")
            ],
          ),
        ),
      ),
    );
  }
}
