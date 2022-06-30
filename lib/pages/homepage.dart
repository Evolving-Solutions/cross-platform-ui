import 'package:es_ur_shortener/widgets/Hero_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 600,
          child: HeroContainerWidget(),
        )
      ],
    );
  }
}
