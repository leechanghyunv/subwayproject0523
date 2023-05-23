import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:subway_project_230508/custom/TextFrame.dart';
import '../controller/CalCulateDuration.dart';
import '../controller/InitialController.dart';
import '../controller/WeatherController.dart';
import 'ColorController.dart';

class ColorBar extends StatefulWidget {

  final String stringNumber;

  const ColorBar({Key? key, required this.stringNumber}) : super(key: key);

  @override
  State<ColorBar> createState() => _ColorBarState();
}

class _ColorBarState extends State<ColorBar> {

  final DustData = Get.put(InitialController());
  final WeatherData = Get.put(WeatherController());
  final Calc = Get.put(CalculateTime());

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;  ///  896.0 IPHONE11
    double appWidth = MediaQuery.of(context).size.width;  /// 414.0 IPHONE11
    double appRatio = MediaQuery.of(context).size.aspectRatio;
    double mainBoxHeight = appHeight * 0.58;  /// 520   ~ 519.68

    return Column(
      children: [
        SizedBox(
          height: mainBoxHeight / 20,
        ),
        GestureDetector(
          onTap: (){
            Get.snackbar(
              '미세먼지 농도 ${DustData.DustLevel} ${DustData.Comment}',
              '현재온도 ${WeatherData.temperature.value.toStringAsFixed(1)}\u2103',
              backgroundColor: Colors.white,
              icon: WeatherData.weathericon,
              shouldIconPulse: true,
              duration: Duration(seconds: 5),

              mainButton: TextButton(
                  onPressed: (){
                    showDialog(context: context, builder: (context) => AlertDialog(
                      content: SingleChildScrollView(
                        child: Container(
                          width: double.maxFinite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFrame(comment: '가장 유용한 기능은?\n'),

                              TextFrame(comment: '개선되었으면 하는것?\n'),

                              TextFrame(comment: '편의성은 좋은편인가?\n'),

                              TextFrame(comment: '디자인은 만족스러운가?\n'),

                              TextFrame(comment: '추가로 원하는 기능은?\n'),

                              TextFrame(comment: '이런 서비스를 사용할 의향이 있나요?\n'),

                              TextFrame(comment: '기타의견?\n'),
                              Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.
                                        all(Colors.grey[300]),
                                      ),
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                        Fluttertoast.showToast(
                                            msg:'피드백 감사합니다.',
                                            gravity: ToastGravity.CENTER);
                                      },
                                          child: TextFrame(comment:'의견 전달하기'))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
                  }, child: TextFrame(comment: '설문조사')),
            );
            // box.erase();
            setState(() {});
          },
          child: SizedBox(
            height: appHeight * 0.58 * 0.90,
            width: appWidth * 0.08,
            child: ColorContainer(
                StringNumber: widget.stringNumber
            ),
          ),
        ),
      ],
    );
  }
}

