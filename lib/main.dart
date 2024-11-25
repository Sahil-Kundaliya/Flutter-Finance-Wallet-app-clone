import 'package:finance_wallet_app_clone/constant/app_routes.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/app_lunch_page.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: AppRoute.instance.routes,
      initialRoute: LunchScreen.lunchScreen,
    );
  }
}
