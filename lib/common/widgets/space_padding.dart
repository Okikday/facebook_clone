import 'package:facebook_clone/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class SpacePadding1 extends StatelessWidget {
  final double? width;
  final double? height;

  const SpacePadding1({
    super.key,
    this.width = 1,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceUtils.getScreenWidth(context) * (width!/100),
      height: DeviceUtils.getScreenHeight(context) * (height!/100),
    );
  }
}