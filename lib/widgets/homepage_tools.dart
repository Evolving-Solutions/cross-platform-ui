import 'package:es_ur_shortener/config/palette.dart';
import 'package:flutter/material.dart';

class HomePageTools extends StatelessWidget {
  const HomePageTools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.background,
      height: 1500,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              // width: 500,
              child: const Text(
            'Connecting all the tools you already use',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          )),
          Expanded(
            child: GridView.count(
              primary: false,
              crossAxisCount: 3,
              padding: const EdgeInsets.all(30),
              childAspectRatio: 0.9 / 0.8,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  width: 350.0,
                  height: 300.0,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10, bottom: 10.0),
                            child: const Text(
                              'URL Shortener',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Text(
                            'Varius facilisi mauris sed sit. Non sed et duis dui leo, vulputate id malesuada non. Cras aliquet purus dui laoreet diam sed lacus, fames.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text('button')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350.0,
                  height: 300.0,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10, bottom: 10.0),
                            child: const Text(
                              'URL Shortener',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Text(
                              'Varius facilisi mauris sed sit. Non sed et duis dui leo, vulputate id malesuada non. Cras aliquet purus dui laoreet diam sed lacus, fames.'),
                          const Text('button')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350.0,
                  height: 300.0,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10, bottom: 10.0),
                            child: const Text(
                              'URL Shortener',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Text(
                              'Varius facilisi mauris sed sit. Non sed et duis dui leo, vulputate id malesuada non. Cras aliquet purus dui laoreet diam sed lacus, fames.'),
                          const Text('button')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350.0,
                  height: 300.0,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10, bottom: 10.0),
                            child: const Text(
                              'URL Shortener',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Text(
                              'Varius facilisi mauris sed sit. Non sed et duis dui leo, vulputate id malesuada non. Cras aliquet purus dui laoreet diam sed lacus, fames.'),
                          const Text('button')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350.0,
                  height: 300.0,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10, bottom: 10.0),
                            child: const Text(
                              'URL Shortener',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Text(
                              'Varius facilisi mauris sed sit. Non sed et duis dui leo, vulputate id malesuada non. Cras aliquet purus dui laoreet diam sed lacus, fames.'),
                          const Text('button')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350.0,
                  height: 300.0,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10, bottom: 10.0),
                            child: const Text(
                              'URL Shortener',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Text(
                              'Varius facilisi mauris sed sit. Non sed et duis dui leo, vulputate id malesuada non. Cras aliquet purus dui laoreet diam sed lacus, fames.'),
                          const Text('button')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
