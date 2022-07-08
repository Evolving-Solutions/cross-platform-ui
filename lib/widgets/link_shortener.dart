import 'package:es_ur_shortener/config/palette.dart';
import 'package:flutter/material.dart';

class LinkShortenerContainer extends StatelessWidget {
  const LinkShortenerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      color: Palette.primaryTeal,
      width: double.infinity,
      // padding: EdgeInsets.all(value),
      // decoration: DecoratedBox(decoration: decoration),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Make your links shorter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'Ac euismod vel sit maecenas id pellentesque eu sed consectetur. Malesuada adipiscing sagittis vel nulla nec.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
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
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'URL',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 140,
                child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Palette.secondaryCoral)
                    ),
                    child: const Text(
                      'Shorten URL',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
