import 'package:flutter/material.dart';
//import 'package:okaki/responsive/desktop_body.dart';
//import 'package:okaki/responsive/mobile_body.dart';
//import 'package:okaki/responsive/responsive_layout.dart';
//import 'package:okaki/responsive/tablet_body.dart';
import 'package:okaki/screens/login_screen.dart';
import 'package:okaki/screens/verification_screen.dart';
//import 'package:okaki/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'okaki',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
        ),
        //primarySwatch: createMaterialColor(Color.fromARGB(255, 91, 183, 141)),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(255, 91, 183, 141),
          onPrimary: Color.fromARGB(255, 246, 240, 233),
          secondary: Color.fromARGB(255, 196, 153, 107),
          onSecondary: Color.fromARGB(255, 246, 240, 233),
          error: Color.fromARGB(255, 219, 83, 77),
          onError: Color.fromARGB(255, 246, 240, 233),
          background: Color.fromARGB(255, 246, 240, 233),
          onBackground: Color.fromARGB(255, 99, 100, 102),
          surface: Color.fromARGB(255, 246, 240, 233),
          onSurface: Color.fromARGB(255, 99, 100, 102),
        ),
      ),
      /*
      home: const ResponsiveLayout(
        mobileBody: MobileScaffold(),
        tabletBody: TabletScaffold(),
        desktopBody: DesktopScaffold(),
      ),*/
      //home: const LoginScreen(),
      home: const VerificationScreen(),
    );
  }
}
