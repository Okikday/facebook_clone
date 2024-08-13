import 'package:facebook_clone/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String? text;
  final double? width;
  final double? height;
  final void Function()? onpressed;
  Button1({
    super.key,
    this.text,
    this.width,
    this.height,
    this.onpressed,
    });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = DeviceUtils.getScreenWidth(context);
    final double screenHeight = DeviceUtils.getScreenHeight(context);

    return MaterialButton(
      onPressed: onpressed,
      color: const Color(0xff0B65D3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      minWidth: width != null? screenWidth * (width!/100) : screenWidth * 0.8,
      height: height != null? screenHeight * (height!/100) : 48,
      child: Text("$text", style: TextStyle(color: Colors.white),),
      );
  }
}