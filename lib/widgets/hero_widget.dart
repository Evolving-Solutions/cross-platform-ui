import 'package:flutter/material.dart';
import 'package:es_ur_shortener/config/assets.dart';

class HeroContainerWidget extends StatelessWidget {
  const HeroContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          children: const [
            Expanded(
              flex: 6,
              child: Text('Project k Tools'),
            ),
            Expanded(
              flex: 3,
              child: Text('Other text'),
            ),
          ],
        ),),
        Expanded(child: Image.asset(Assets.hero)
        )
      ],
    );
  }
}
