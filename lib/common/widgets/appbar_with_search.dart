import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/search_bar.dart';
import 'package:votes_bank/common/widgets/text.dart';

import '../../core/routing/routing_manager.dart';

class AppBarWithSearch extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool haveIcon;
 final void Function()? onTap;
  const AppBarWithSearch({super.key, required this.title, required this.haveIcon , this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BoldTextWidget(
        title,
      ).paddingOnly(top: 25),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: const Color(0xffE9E9E9),
          padding: const EdgeInsets.symmetric(horizontal: 20), // Set the color of the line here
          height: 62,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: SearchBarWidget(
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                ),
              ),
            ],
          ),
        ),
      ),
      leadingWidth: 35,
      leading: SvgPicture.asset(
        "assets/icons/Back.svg",
      )
          .paddingSymmetric(
            horizontal: 5,
          )
          .paddingOnly(top: 20)
          .onTap(() {
        Scaffold.of(context).closeDrawer();
        RoutingManager.back();
      }),
      actions: [
        haveIcon
            ? SvgPicture.asset(
                "assets/icons/Add tag.svg",
                width: 40,
                height: 40,
              ).onTap(() {
                onTap?.call();
              }).paddingOnly(top: 25)
            : Container(),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(140);
}
