import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/extensions/widget_extensions.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/routing/routing_manager.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  String title;
  bool haveDrawer;
  final Widget? icon;

  AppBarWidget({
    super.key,
    required this.title,
    required this.haveDrawer,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BoldTextWidget(
        title,
      ),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey, // Set the color of the line here
          height: 1.0,
        ),
      ),
      leadingWidth: 35,
      leading: haveDrawer
          ? SvgPicture.asset("assets/icons/button_menu.svg").onTap(() {
              Scaffold.of(context).openDrawer();
            })
          : SvgPicture.asset(
              "assets/icons/Back.svg",
            ).paddingSymmetric(horizontal: 5).onTap(() {
              Scaffold.of(context).closeDrawer();
              RoutingManager.back();
            }),
      actions: [
        icon ?? Container(),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
