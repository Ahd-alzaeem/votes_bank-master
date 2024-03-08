import 'package:get/get.dart';
import 'package:votes_bank/features/auth/presentation_layer/screens/login.dart';
import 'package:votes_bank/features/auth/presentation_layer/screens/register.dart';
import 'package:votes_bank/features/auth/presentation_layer/screens/splash.dart';
import 'package:votes_bank/features/file_print/presentation_layer/screens/file_print.dart';
import 'package:votes_bank/features/file_print/presentation_layer/screens/print.dart';
import 'package:votes_bank/features/guarantee/presentation_layer/screens/guarantee.dart';
import 'package:votes_bank/features/home/presentation_layer/screens/home.dart';
import 'package:votes_bank/features/tag/presentation_layer/screens/tags.dart';
import 'package:votes_bank/features/users_guarantee/presentation_layer/screens/users_guarantee.dart';

import '../../features/users_guarantee/presentation_layer/screens/user_guarantee_details.dart';

class RouteName {
  static String splash = '/splash';
  static String login = '/login';
  static String register = '/register';
  static String home = "/home";
  static String filePrint = "/file-print";
  static String tag = "/tag";
  static String guarantee = "/guarantee";
  static String print = "/print";
  static String usersGuarantee = "/users-guarantee";
  static String usersGuaranteeDetails = "/users-guarantee-details";
}

class RoutingManager {
  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: RouteName.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RouteName.filePrint,
      page: () => const FilePrintScreen(),
    ),
    GetPage(
      name: RouteName.tag,
      page: () => const TagScreen(),
    ),
    GetPage(
      name: RouteName.guarantee,
      page: () => const GuaranteeScreen(),
    ),
    GetPage(
      name: RouteName.print,
      page: () => const PrintScreen(),
    ),
    GetPage(
      name: RouteName.usersGuarantee,
      page: () => const UsersGuaranteeScreen(),
    ),
    GetPage(
      name: RouteName.usersGuaranteeDetails,
      page: () => const UsersGuaranteeDetailsScreen(),
    ),
  ];

  static void to(String route, {dynamic arguments}) {
    Get.toNamed(route, arguments: arguments);
  }

  static void off(String route) {
    Get.offNamed(route);
  }

  static void offAll(String route) {
    Get.offAllNamed(route);
  }

  static void back() {
    Get.back();
  }
}
