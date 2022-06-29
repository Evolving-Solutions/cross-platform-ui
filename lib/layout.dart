import 'package:flutter/material.dart';
import 'package:es_ur_shortener/config/palette.dart';
import 'package:es_ur_shortener/widgets/large_screen.dart';
import 'package:es_ur_shortener/widgets/small_screen.dart';
import 'package:es_ur_shortener/helpers/responsiveness.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.secondaryGranite,
      ),
      body: const ResponsiveWidget(largeScreen: LargeScreen(), mediumScreen: LargeScreen(), smallScreen: SmallScreen(), customScreen: LargeScreen())
    );
  }
}
