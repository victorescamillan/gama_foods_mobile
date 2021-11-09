import 'package:flutter/material.dart';
import 'package:projects/app_router.dart';
import 'package:projects/constants/index.dart';
import 'package:projects/providers/index.dart';
import 'package:projects/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: AppProviders.providers, child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.labels.appName,
      themeMode: theme.currentTheme,
      theme: theme.lightTheme,
      darkTheme: theme.darkTheme,
      initialRoute: Routes.homeRoute,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
