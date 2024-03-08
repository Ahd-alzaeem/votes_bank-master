import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/appbar.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/features/file_print/presentation_layer/widgets/voter_file.dart';

import '../../../../common/widgets/appbar_with_search.dart';

class FilePrintScreen extends StatelessWidget {
  const FilePrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWithSearch(
        title: "ملفات الطباعة",
        haveIcon: false,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LinerTextWidget(
                "إجمالي ملفات الطباعة ( 4 )",
                color: Color(0xff3E3E3E),
                size: 20,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return const VoterFileWidget();
                },
                separatorBuilder: (BuildContext context, index) {
                  return const Divider();
                },
                itemCount: 10,
              ).paddingSymmetric(vertical: 10)
            ],
          ),
        ),
      ),
    );
  }
}
