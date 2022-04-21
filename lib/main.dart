import 'package:doremon_world/pages/routes.dart';
import 'package:doremon_world/widgits/theme.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeroute: (context) => Homepage(),
        MyRoutes.loginroute: (context) => Loginpage(),
      },
    );
  }
}
