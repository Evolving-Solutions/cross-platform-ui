import 'package:flutter/material.dart';
import 'package:es_ur_shortener/config/palette.dart';
import 'package:es_ur_shortener/widgets/custom_text.dart';
import 'package:es_ur_shortener/config/assets.dart';

class HeroContainerWidget extends StatelessWidget {
  const HeroContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(100, 50, 100, 50),
      color: Palette.background,

      child: Container(
        height: 358,
        // color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: 249,
                width: 500,
                // color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                            text: 'Project K',
                            size: 60,
                            color: Palette.primaryCasal,
                            weight: FontWeight.w800),
                        CustomText(
                            text: 'Tools',
                            size: 60,
                            color: Palette.secondaryCoral,
                            weight: FontWeight.w800),
                      ],
                    ),
                    SizedBox(
                      width: 500,
                      height: 100,
                      child: CustomText(
                        text:
                            'Varius facilisi mauris sed sit. Non sed et duis dui leo, vulputate id malesuada non. Cras aliquet purus dui laoreet diam sed lacus, fames.',
                        size: 22,
                        color: Palette.secondaryGranite,
                        weight: FontWeight.w400,
                      ),
                    ),
                    const ElevatedButton(onPressed: null, child: Text('Sign up for free'))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(Assets.hero))
          ],
        ),
      ),
    );
  }
}
