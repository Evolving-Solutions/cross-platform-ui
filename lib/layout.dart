import 'package:flutter/material.dart';
import 'package:es_ur_shortener/config/palette.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.secondaryGranite,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(color: Palette.primaryTeal,)),
          Expanded(
            flex: 5,
            child: Container(color: Palette.secondaryCoral,))
        ],
      ),
    );
  }
}
