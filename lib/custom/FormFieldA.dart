import 'package:flutter/cupertino.dart';

import '../parts/DesignDialogA.dart';
import '../parts/QrContainer.dart';
import 'InputName.dart';
import 'InputSubway.dart';

class TextFormA extends StatelessWidget {
  final dynamic Function(String) itemSubmitted;
  final Function(String) onSubmitted;
  final String stringNumber;
  final String subwayName;
  final String passenger;

  const TextFormA(
      {Key? key,
      required this.itemSubmitted,
      required this.onSubmitted,
      required this.stringNumber,
      required this.subwayName,
      required this.passenger})
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
            children: <Widget>[
              SizedBox(
                height: appHeight * 0.0112,
              ),
              InputSubway(
                  itemSubmitted: itemSubmitted
              ),
              SizedBox(
                height: appHeight * 0.0168,
              ),
              InputName(
                onSubmitted: onSubmitted,
              ),
              SizedBox(
                height: appHeight * 0.0168,
              ),
              DialogDesignBoxA(
                  stringNumber: stringNumber,
                  subwayName: subwayName,
                  passenger: passenger
              ),
              SizedBox(
                height: appHeight * 0.0168,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
