import 'package:flutter/material.dart';

var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 64,
        ),
      ),
      Padding(
        padding: tilePadding,
        child: const ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: const ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'S E T T I N G S',
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: const ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'A B O U T',
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: const ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'L O G O U T',
          ),
        ),
      ),
    ],
  ),
);
