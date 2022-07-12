import 'package:es_ur_shortener/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LinkShortenerContainer extends StatefulWidget {
  const LinkShortenerContainer({Key? key}) : super(key: key);

  @override
  State<LinkShortenerContainer> createState() => _LinkShortenerContainerState();
}

class _LinkShortenerContainerState extends State<LinkShortenerContainer> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      color: Palette.primaryTeal,
      width: double.infinity,
      // padding: EdgeInsets.all(value),
      // decoration: DecoratedBox(decoration: decoration),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 600,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Make your links shorter',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w700),
                          )),
                      Text(
                        'Ac euismod vel sit maecenas id pellentesque eu sed consectetur. Malesuada adipiscing sagittis vel nulla nec.',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 630,
                  height: 50,
                  color: Colors.white,
                  // padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'URL',
                        contentPadding: EdgeInsets.all(10.0)),
                    onSaved: (String? value) {
                      print(value);
                      // call api
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 140,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState?.save();
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Palette.secondaryCoral)),
                    child: const Text(
                      'Shorten URL',
                      style: TextStyle(color: Colors.white),
                    )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
