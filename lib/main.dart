import 'package:flutter/material.dart';
import 'package:schedulerapp/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  // WidgetsFlutterBinding.ensureInitialized();
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Noto',
      ),
      home: SplashScreen(),
    );
  }
}

class Colorss {
  Color color1 = const Color.fromARGB(255, 24, 61, 19);
  Color color2 = const Color.fromARGB(255, 163, 11, 31);
  Color color3 = const Color.fromARGB(143, 11, 163, 11);
  Color color4 = const Color.fromARGB(255, 46, 109, 59).withOpacity(0.3);
  Color color5 = const Color.fromARGB(255, 255, 255, 255);
}
