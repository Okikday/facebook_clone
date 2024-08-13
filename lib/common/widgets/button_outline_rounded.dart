import 'package:facebook_clone/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class OutlinedButton1 extends StatelessWidget {
  final String? text;
  final Function()? onpressed;
  final double? height;
  final double? width;
  final Color? buttonColor;
  final Color? textColor;

  const OutlinedButton1({
    super.key,
    this.text,
    this.onpressed,
    this.height,
    this.width,
    this.buttonColor,
    this.textColor,

  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = DeviceUtils.getScreenWidth(context);
    final double screenHeight = DeviceUtils.getScreenHeight(context);

    return SizedBox(
      width: width != null? screenWidth * (width!/100) : screenWidth * 0.8,
      height: height != null? screenHeight * (height!/100) : 48,
      child: OutlinedButton(

        onPressed: onpressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.blue, width: 2),
          minimumSize: Size(screenWidth * 0.8, 48),


        ),
        child: Text("$text", style: const TextStyle(color: Colors.blue),),
      ),
    );
  }
}