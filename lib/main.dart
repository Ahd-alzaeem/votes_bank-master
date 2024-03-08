import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votes_bank/core/routing/routing_manager.dart';
import 'package:votes_bank/features/auth/presentation_layer/screens/login.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:votes_bank/features/auth/presentation_layer/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        // Locale('en'),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteName.splash,
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      getPages: RoutingManager.pages,
    );
  }
}
