import 'package:flutter/material.dart';
import 'package:es_ur_shortener/config/assets.dart';
import 'package:es_ur_shortener/helpers/responsiveness.dart';
import 'package:es_ur_shortener/config/palette.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Padding(
              padding: const EdgeInsets.only(left: 104),
              child: Image.asset(
                Assets.logo,
              ),
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
      title: SizedBox(
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'Features',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Company',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Docs',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      centerTitle: true,
      actions: [
        SizedBox(
          width: 200,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TextButton(onPressed: null, child: Text('Sign in')),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Palette.primaryTeal),
                ),
                child: const Text('Sign up'),
              ),
            ],
          ),
        )
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      primary: true,
      leadingWidth: 300,
      toolbarHeight: 80,
    );
