import 'package:flutter/material.dart';

PreferredSizeWidget topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    title: const Text('Evolving Solutions'),
    backgroundColor: Colors.red,
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {
          scaffoldKey.currentState?.openEndDrawer();
        },
      ),
    ],
  );
}