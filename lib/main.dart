import 'package:flutter/material.dart';
import 'package:flutter_pages/pages/login.dart';
import 'package:flutter_pages/pages/main.dart';
import 'package:flutter_pages/providers/dark_theme_provider.dart';
import 'package:provider/provider.dart';

import 'classes/dark_theme_styles.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
        create: (_) {
          return themeChangeProvider;
        },
        child: Consumer<DarkThemeProvider>(
          builder: (BuildContext? context, value, Widget? child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: Styles.themeData(themeChangeProvider.darkTheme, context!),
              home: const Main(),
              routes: <String, WidgetBuilder>{
                'login': (BuildContext context) => const Login(),
              },
            );
          },
        ),
      );
  }
}