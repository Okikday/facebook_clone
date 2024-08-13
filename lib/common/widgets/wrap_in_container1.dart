import 'package:flutter/material.dart';

import '../../utils/device/device_utils.dart';

class WrapInContainer1 extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;

  const WrapInContainer1({
    super.key,
    this.child,
    this.height,
    this.width,

  });

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.transparent,
      width: width == null ? DeviceUtils.getScreenWidth(context) * 0.9 : DeviceUtils.getScreenWidth(context) * width!,
      child: child,

    );
  }
}
