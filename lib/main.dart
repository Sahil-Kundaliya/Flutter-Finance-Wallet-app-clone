import 'package:finance_wallet_app_clone/constant/app_routes.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/sign_in_page.dart';
import 'package:finance_wallet_app_clone/features/splash/cubits/splash_cubit.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashCubit>(
          create: (context) => SplashCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: AppRoute.instance.routes,
        initialRoute: SignInPage.signInPage,
      ),
    );
  }
}
