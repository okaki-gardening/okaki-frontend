import 'package:flutter/material.dart';

class RegelnPage extends StatefulWidget {
  const RegelnPage({super.key});

  @override
  State<RegelnPage> createState() => _SensorenPageState();
}

class _SensorenPageState extends State<RegelnPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Text(
          "REGELN PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
