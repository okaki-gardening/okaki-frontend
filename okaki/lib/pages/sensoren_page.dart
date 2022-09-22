import 'package:flutter/material.dart';

class SensorenPage extends StatefulWidget {
  const SensorenPage({super.key});

  @override
  State<SensorenPage> createState() => _SensorenPageState();
}

class _SensorenPageState extends State<SensorenPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Text(
          "SENSOREN PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
