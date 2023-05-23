

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpeningText extends StatefulWidget {
  const OpeningText({Key? key}) : super(key: key);

  @override
  State<OpeningText> createState() => _OpeningTextState();
}

class _OpeningTextState extends State<OpeningText> {

  bool _show = true;
  Timer? _timer;
  var counter = 8;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(milliseconds: 1500), (_) {
      setState(() {
        _show = !_show;
      });
      counter--;
      if (counter == 0) {
        print('Cancel timer');
        _timer?.cancel();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    double mainBoxHeight = appHeight * 0.58;

    return Container(
      height: appHeight * 0.58 * 0.75,
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: RotatedBox(
          quarterTurns: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SEOUL',maxLines: 1,
                style: _show? TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  fontSize: mainBoxHeight/8.5,
                )
                    : TextStyle(
                    color: Colors.transparent),),

          ],
        ),
      ),
    );
  }
}
