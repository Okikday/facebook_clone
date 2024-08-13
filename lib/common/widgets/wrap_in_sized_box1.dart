import 'package:flutter/material.dart';

import '../../utils/device/device_utils.dart';

class WrapInSizedBox1 extends StatelessWidget {
  final Widget child;
  final double? boxwidth;
  const WrapInSizedBox1({
    super.key,
    required this.child,
    this.boxwidth,
  });

  @override
  Widget build(BuildContext context) {
    final double width = DeviceUtils.getScreenWidth(context);
    return SizedBox(
      width: boxwidth ?? width * 0.88,
      child: child,
    );
  }
}
