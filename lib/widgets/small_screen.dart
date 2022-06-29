import 'package:es_ur_shortener/config/palette.dart';
import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      color: Palette.primaryCasal,
    );
  }
}
