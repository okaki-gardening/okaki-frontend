import 'package:appwrite_auth_kit/appwrite_auth_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:validators/validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  String _email = "";
  String _password = "";
  bool _emailOK = false;

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
      body: Center(
        child: Column(
          children: <Widget>[
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
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10.0),
                    child: SizedBox(
                      width: 350,
                      child: Center(
                        child: Text(
                          'Geben Sie bitte Ihre E-Mail-Adresse und Ihr Passwort ein.\n',
                          style: TextStyle(
                              fontSize: 16.0,
                              //fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.left,
                        onChanged: (value) {
                          setState(() {
                            _email = value;
                            _emailOK = isEmail(_email);
                          });
                        },
                        controller: _emailTextController,
                        decoration: InputDecoration(
                          prefixIconColor:
                              Theme.of(context).colorScheme.background,
                          prefixIcon: const Icon(Icons.email),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _emailTextController.clear();
                              setState(() {
                                _emailOK = false;
                              });
                            },
                            icon: const Icon(Icons.clear),
                          ),
                          hintText: 'E-Mail Adresse',
                          labelText: 'E-Mail Adresse',
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.left,
                        controller: _passwordTextController,
                        onChanged: (value) {
                          setState(() {
                            _password = value;
                          });
                        },
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          prefixIconColor:
                              Theme.of(context).colorScheme.background,
                          prefixIcon: const Icon(Icons.password),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _passwordTextController.clear();
                            },
                            icon: const Icon(Icons.clear),
                          ),
                          hintText: 'Passwort',
                          labelText: 'Passwort',
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  minimumSize: const Size(350, 50),
                  maximumSize: const Size(350, 50),
                ),
                onPressed: (_emailOK && _password.isNotEmpty)
                    ? () async => {
                          if (!await context.authNotifier.createEmailSession(
                              email: _emailTextController.text,
                              password: _passwordTextController.text))
                            {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          context.authNotifier.error ??
                                              "Unknown error")))
                            }
                        }
                    : null,
                child: const Text("Login"),
              ),
            ),
            const Expanded(
              child: SizedBox(
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
