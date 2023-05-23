import 'package:flutter/cupertino.dart';

import '../parts/DesignDialogB.dart';
import '../parts/QrContainer.dart';
import 'InputName.dart';
import 'InputSubway.dart';

class TextFormB extends StatelessWidget {
  final dynamic Function(String) itemSubmittedA;
  final dynamic Function(String) itemSubmittedB;
  final Function(String) onSubmitted;
  final String LineNumT;

  const TextFormB(
      {Key? key,
      required this.itemSubmittedA,
      required this.itemSubmittedB,
      required this.onSubmitted,
      required this.LineNumT})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;///  896.0 IPHONE11

    return Form(
        child: Column(
      children: [
        DialogDesign(
          DesignText: 'Boarding Psss',
        ),
        Container(
          child: Column(
            children: [
              SizedBox(
                height: appHeight * 0.0112,
              ),
              InputSubway(itemSubmitted: itemSubmittedA),
              SizedBox(
                height: appHeight * 0.0168,
              ),
              InputSubway(itemSubmitted: itemSubmittedB),
              SizedBox(
                height: appHeight * 0.0168,
              ),
              InputName(
                onSubmitted: onSubmitted,
              ),
              SizedBox(
                height: appHeight * 0.015,
              ),
              DialogDesignBoxB(
                LineNumT: LineNumT,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
