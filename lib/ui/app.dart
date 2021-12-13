import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/content.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/registro.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Red Social Intellect TV',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF303030),
        fontFamily: 'Merriweather',
      ),
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginPage(
              title: 'LogIn',
            ),
        '/register': (context) => const RegisterPage(
              title: 'Registro',
            ),
        '/': (context) => const HomePage(
              title: 'Home',
            ),
        '/content': (context) => const ContentPage(
              title: 'Contenido',
            ),
      },
    );
  }
}
