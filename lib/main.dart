import 'package:dibasys_task/core/utils/assets/app_assets.dart';
import 'package:dibasys_task/core/utils/theme/app_theme.dart';
import 'package:dibasys_task/features/checkin/presentation/provider/checkin_provider.dart';
import 'package:dibasys_task/features/login/presentation/provider/login_provider.dart';
import 'package:dibasys_task/features/login/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => CheckInProvider()),
      ],
      child: DefaultTextStyle(
        style: TextStyle(color: context.appColors.text),
        child: MaterialApp(
          title: 'Dibasys Task',
          theme: ThemeData(
            fontFamily: AppFonts.dmSans,
            colorScheme: ColorScheme.fromSeed(
              seedColor: context.appColors.primary,
            ),
            scaffoldBackgroundColor: context.appColors.background,
            appBarTheme: AppBarTheme(
              backgroundColor: context.appColors.background,
              foregroundColor: context.appColors.background,
              surfaceTintColor: context.appColors.background,
            ),
            textTheme: Theme.of(context).textTheme.apply(
              bodyColor: context.appColors.text,
              displayColor: context.appColors.text,
              decorationColor: context.appColors.text,
            ),
          ),
          home: LoginScreen(),
        ),
      ),
    );
  }
}
