import 'package:flutter/material.dart';
import 'package:es_ur_shortener/config/palette.dart';
import 'package:es_ur_shortener/config/assets.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroContainerWidget extends StatelessWidget {
  const HeroContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(100, 50, 100, 50),
      height: 249,
      color: Palette.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: 500,
              // color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Project K ',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            fontSize: 60,
                            color: Palette.primaryCasal,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -2.5,
                          ),
                        ),
                      ),
                      Text(
                        'Tools',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            fontSize: 60,
                            color: Palette.secondaryCoral,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -2.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 500,
                    height: 100,
                    child: Text(
                        'Varius facilisi mauris sed sit. Non sed et duis dui leo, vulputate id malesuada non. Cras aliquet purus dui laoreet diam sed lacus, fames.',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 22,
                            color: Palette.secondaryGranite,
                            fontWeight: FontWeight.w400, 
                          ),
                        ),
                      ), 
                  ),
                  ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Palette.primaryTeal),
                      ),
                      child: const Text(
                        'Sign up for free',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(Assets.hero))
        ],
      ),
    );
  }
}
