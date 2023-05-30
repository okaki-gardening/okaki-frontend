import 'package:appwrite_auth_kit/appwrite_auth_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaki/providers/client_provider.dart';
import 'package:okaki/screens/app_screen.dart';

late Client client;

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final clientState = ref.watch(clientProvider);

    return AppwriteAuthKit(
      client: clientState,
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
