import 'package:flutter/material.dart';

class VentilePage extends StatefulWidget {
  const VentilePage({super.key});

  @override
  State<VentilePage> createState() => _SensorenPageState();
}

class _SensorenPageState extends State<VentilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Text(
          "VENTILE PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
