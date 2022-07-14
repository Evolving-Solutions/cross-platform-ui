import 'package:es_ur_shortener/widgets/hero_widget.dart';
import 'package:es_ur_shortener/widgets/homepage_tools.dart';
import 'package:es_ur_shortener/widgets/link_shortener.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(
            height: 400,
            child: HeroContainerWidget(),
          ),
          LinkShortenerContainer(),
          HomePageTools(),
        ],
      ),
    );
  }
}
