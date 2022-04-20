import 'package:flutter/material.dart';
import 'package:learningdart/pages/login_page.dart';
import 'package:learningdart/pages/home_page.dart';
import 'package:learningdart/utils/routes.dart';
import 'package:learningdart/widgets/themes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      //darkTheme: MyTheme.darkTheme(context),
    
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context) => const LoginPage(),
        MyRoutes.homeRoute:(context) => const HomePage(),
        MyRoutes.loginRoute:(context) => const LoginPage()
      },
    );
  }
}
