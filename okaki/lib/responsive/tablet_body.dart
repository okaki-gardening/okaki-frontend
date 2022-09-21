import 'package:flutter/material.dart';
import 'package:okaki/responsive/constants.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tablet"),
      ),
      drawer: myDrawer,
      body: const Text("Tablet Layout not implemented yet."),
    );
  }
}
