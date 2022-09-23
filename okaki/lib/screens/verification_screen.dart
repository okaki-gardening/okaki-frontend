import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:validators/validators.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

StreamController<ErrorAnimationType> errorController =
    StreamController<ErrorAnimationType>();

class _VerificationScreenState extends State<VerificationScreen> {
  final _codeTextController = TextEditingController();
  String _code = "";
  bool _codeOK = false;

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
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 2, bottom: 10),
                  child: Text(
                    'Schritt 2/2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 350,
                    child: Center(
                      child: Text(
                        'Wir haben einen Code gemailt.\nBitte geben Sie den Login-Code ein.',
                        style: TextStyle(
                            fontSize: 16.0,
                            //fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: SizedBox(
                      width: 350,
                      child: PinCodeTextField(
                        appContext: context,
                        length: 6,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.underline,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          //activeFillColor: Colors.white,
                          //inactiveFillColor: Colors.grey,
                          //inactiveColor: Colors.grey,
                        ),
                        animationDuration: const Duration(milliseconds: 300),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        enableActiveFill: false,
                        keyboardType: TextInputType.number,
                        errorAnimationController: errorController,
                        controller: _codeTextController,
                        onCompleted: (v) {
                          setState(() {
                            _codeOK = true;
                          });
                        },
                        onChanged: (value) {
                          //print(value);
                          setState(() {
                            _code = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          //print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                minimumSize: const Size(350, 50),
                maximumSize: const Size(350, 50),
              ),
              onPressed: _codeOK ? () => {} : null,
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
    );
  }
}
