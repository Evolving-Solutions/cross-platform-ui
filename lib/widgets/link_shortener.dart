import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:es_ur_shortener/config/palette.dart';
import 'package:es_ur_shortener/services/remote_service.dart';

class LinkShortenerContainer extends StatefulWidget {
  const LinkShortenerContainer({Key? key}) : super(key: key);

  @override
  State<LinkShortenerContainer> createState() => _LinkShortenerContainerState();
}

class _LinkShortenerContainerState extends State<LinkShortenerContainer> {
  final _formKey = GlobalKey<FormState>();

  var isLoaded = true; // to be changed
  String? shortenedUrl;

  // shortenUrl
  handleShortenUrl(String url) async {
    shortenedUrl = await RemoteService().shortenUrl(url);
    // print('shortenedUrl ${shortenedUrl}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLoaded ? 400 : 290,
      color: Palette.primaryTeal,
      width: double.infinity,
      // padding: EdgeInsets.all(value),
      // decoration: DecoratedBox(decoration: decoration),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
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
                      width: 600,
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
                          // print(value);
                          // call api
                          handleShortenUrl(value!);
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
                              // handleShortenUrl();
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
                ),
              ],
            ),
          ),
          Visibility(
            visible: isLoaded,
            replacement: const Center(child: CircularProgressIndicator()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Here you go:',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    )),
                Container(
                  height: 60,
                  width: 750,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: const EdgeInsets.only(top: 10),
                  color: Palette.carol2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'https://evolveurl.co/api/8uhI0UKWA',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          child: Text('Copy to clipboard',
                              style: TextStyle(
                                color: Palette.secondaryCoral,
                              )))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
