import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:votes_bank/common/widgets/button.dart';
import 'package:votes_bank/common/widgets/text.dart';
import 'package:votes_bank/core/const/constant.dart';
import 'package:votes_bank/core/routing/routing_manager.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_profile_pic.png"),
          ).paddingSymmetric(vertical: 30, horizontal: 30),
          LinerTextWidget(
            "بدر عبدالرحمن  المطيري",
            size: 22,
            color: AppColor.black,
          ),
          ListTileWidget(
            icon: "Vector.svg",
            title: "حساب المستخدم",
            onTap: () {},
          ),
          ListTileWidget(
            icon: "Vector (1).svg",
            title: "ملفات الطباعة",
            onTap: () {
              RoutingManager.to(RouteName.filePrint);
            },
          ),
          ListTileWidget(
            icon: "Dhaman.svg",
            title: "الضمانات",
            onTap: () {
              RoutingManager.to(RouteName.guarantee);
            },
          ),
          ListTileWidget(
            icon: "Tag_IconButton.svg",
            title: "الوسوم",
            onTap: () {
              RoutingManager.to(RouteName.tag);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 35,
                color: AppColor.divider,
                height: 1,
              ),
              LinerTextWidget(
                "إدارة الحملة",
                color: AppColor.divider,
                size: 16,
              ).paddingSymmetric(horizontal: 30),
              Container(
                width: 35,
                color: AppColor.divider,
                height: 1,
              )
            ],
          ).paddingSymmetric(vertical: 30),
          ListTileWidget(
            title: "ضمانات الحملة",
            icon: "Dhaman.svg",
            onTap: () {
              RoutingManager.to(RouteName.usersGuarantee);
            },
          ),
          ListTileWidget(
            title: "وسوم الحملة",
            icon: "Tag_IconButton.svg",
            onTap: () {},
          ),
          ListTileWidget(
            title: "مستخدمين الحملة",
            icon: "Icon.svg",
            onTap: () {},
          ),
          const Divider(
            color: Color(0xffBDC5CD),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/icons/Settings.svg"),
              SvgPicture.asset("assets/icons/Dark theme ON OFF.svg"),
            ],
          ).paddingOnly(top: 5),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: ButtonWidget(
                onTap: () {},
                title: "تسجيل الخروج",
              ).paddingOnly(bottom: 10),
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 20),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onTap;
  const ListTileWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.comfortable,
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset("assets/icons/$icon"),
      title: LinerTextWidget(
        title,
        size: 20,
        color: AppColor.black,
      ),
      onTap: onTap,
    );
  }
}
