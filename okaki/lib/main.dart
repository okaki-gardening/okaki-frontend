import 'package:appwrite_auth_kit/appwrite_auth_kit.dart';
import 'package:flutter/material.dart';
import 'package:okaki/screens/app_screen.dart';

//import 'package:okaki/utils.dart';

late Client client;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Client client;
  @override
  void initState() {
    super.initState();

    client = Client();
    client
        .setEndpoint('https://appwrite.okaki.org/v1')
        .setProject('644bbba076344291f17d');
  }

  @override
  Widget build(BuildContext context) {
    return AppwriteAuthKit(
      client: client,
      child: MaterialApp(
        title: 'Okaki',
        debugShowCheckedModeBanner: false,
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
        home: const AppScreen(),
      ),
    );
  }
}
