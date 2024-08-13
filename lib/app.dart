import 'package:facebook_clone/common/test/test1.dart';
import 'package:facebook_clone/utils/themes/theme.dart';
import 'package:facebook_clone/views/pages/authentication/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: const LoginPage(),
    );
  }
}
