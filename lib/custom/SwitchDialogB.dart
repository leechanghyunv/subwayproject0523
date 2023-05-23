
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../parts/QrContainer.dart';
import '../page/DialogPage.dart';

class SwitchDialogB extends StatelessWidget {


  final String Line;
  final Widget? child;

  const SwitchDialogB({Key? key, required this.Line, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;  ///  896.0 IPHONE11

    return Container(
      color: Colors.white,
      height: appHeight * 0.48,
      child: Column(
        children: [
          DialogDesign(
              DesignText: 'Location Tracking'),
          SizedBox(height: 10,),
          Container(
            color: Colors.grey,
            height: appHeight * 0.2907,
             child: DialogPage(
               GetLine: Line,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 35,
              color: Colors.white,
              alignment: Alignment.center,
              width: double.maxFinite,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
