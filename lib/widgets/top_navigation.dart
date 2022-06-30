import 'package:flutter/material.dart';
import 'package:es_ur_shortener/config/assets.dart';
import 'package:es_ur_shortener/helpers/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: SizedBox(
                    height: 40,
                    child: Image.asset(
                      Assets.logo,
                    ),
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
              elevation: 0,
    );
