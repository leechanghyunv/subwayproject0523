import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../parts/OpeningText.dart';
import 'Layout.dart';
import 'package:blinking_text/blinking_text.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    double appRatio = MediaQuery.of(context).size.aspectRatio;
    double mainBoxHeight = appHeight * 0.58;

    return LayoutPage(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: appHeight * 0.17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.transparent,
                  height: appHeight * 0.73,
                  width: appWidth * 0.0425,
                ),
                Container(
                  color: Colors.white,
                  height: appHeight * 0.73,
                  width: appWidth * 0.915,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: const DottedLine(
                          dashLength: 15,
                          dashGapLength: 6,
                          lineThickness: 7,
                          dashColor: Colors.white,
                        ),
                      ),

                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: [
                                SizedBox(
                                  height: mainBoxHeight / 20,
                                ),
                                SizedBox(
                                  height: appHeight * 0.58 * 0.90,
                                  width: appWidth * 0.08,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: mainBoxHeight / 80,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: mainBoxHeight / 25,
                                ),
                                Container(
                                  height: appWidth * 0.13,
                                  width: mainBoxHeight / 5.5,
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(
                                  height: mainBoxHeight / 25,
                                ),
                                OpeningText(),
                                // BlinkText(
                                //   '안녕',
                                //   style: TextStyle(
                                //   fontSize: appHeight * 0.035,
                                //   fontWeight: FontWeight.bold,
                                //   color: Colors.black,
                                // ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

