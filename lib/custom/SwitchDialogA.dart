import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../parts/QrContainer.dart';

class SwitchDialogA extends StatelessWidget {
  final Widget? child;
  final List<Widget> children;

  const SwitchDialogA(
      {Key? key, required this.child, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;  ///  896.0 IPHONE11
    return Container(
      height: appHeight * 0.42, /// appHeight * 0.4,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DialogDesign(
            DesignText: 'RealTime Arrival',
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.grey[100],
              width: double.maxFinite,
              child: child,
            ),
          ),
          Row(
            children: children,
          ),
        ],
      ),
    );
  }
}
