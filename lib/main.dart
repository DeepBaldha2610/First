import 'package:flutter/material.dart';
import 'package:login/pages/cart_page.dart';
import 'package:login/pages/home_page.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/utils/routes.dart';
import 'package:login/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheam.lightTheme(context),
      darkTheme: MyTheam.darkTheme(context),

      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        MyRoutes.mainRoutes : (context) => LoginPage(),
        MyRoutes.loginRoutes : (context) => LoginPage(),
        MyRoutes.homeRoutes : (context) => HomePage(),
        MyRoutes.cartRoutes : (context) => CartPage(),
      },
    );
  }
}
