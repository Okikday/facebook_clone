import 'package:flutter/material.dart';

import '../../utils/device/device_utils.dart';

class BackgroundGradient1 extends StatefulWidget {
  final Widget child;
  BackgroundGradient1({
    super.key,
    required this.child,
  });

  @override
  State<BackgroundGradient1> createState() => _BackgroundGradient1State();
}

class _BackgroundGradient1State extends State<BackgroundGradient1> {
  @override
  Widget build(BuildContext context) {
    final double width = DeviceUtils.getScreenWidth(context);
    final double height = DeviceUtils.getScreenHeight(context);
    return SingleChildScrollView(
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(50, 237, 85, 136),Color.fromARGB(50, 57, 158, 240)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, DeviceUtils.getStatusBarHeight(context), 8, 8),
          child: widget.child,
        ),
      ),
    );
  }
}
