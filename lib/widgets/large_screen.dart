import 'package:flutter/material.dart';
import 'package:es_ur_shortener/config/palette.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Palette.primaryTeal,
        )),
        Expanded(
            flex: 5,
            child: Container(
              color: Palette.secondaryCoral,
            ))
      ],
    );
  }
}
