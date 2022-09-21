import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      */
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              height: 300,
              width: 300,
              child: SvgPicture.asset(
                'lib/images/okaki_logo.svg',
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIconColor: Theme.of(context).colorScheme.background,
                      prefixIcon: const Icon(Icons.email),
                      hintText: 'E-Mail Adresse',
                      labelText: 'E-Mail Adresse',
                      fillColor: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  child: const Text("Code anfordern"),
                  onPressed: () => {},
                ),
              ],
            ),
          ),
          const Expanded(
              child: SizedBox(
            height: 100,
          )),
        ],
      ),
    );
  }
}
