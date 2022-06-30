import 'package:flutter/material.dart';
import 'package:es_ur_shortener/widgets/large_screen.dart';
import 'package:es_ur_shortener/widgets/small_screen.dart';
import 'package:es_ur_shortener/helpers/responsiveness.dart';
import 'package:es_ur_shortener/widgets/top_navigation.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topNavigationBar(context, scaffoldKey),
        body: const ResponsiveWidget(
            largeScreen: LargeScreen(),
            mediumScreen: LargeScreen(),
            smallScreen: SmallScreen(),
            customScreen: LargeScreen()));
  }
}
