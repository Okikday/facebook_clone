import 'package:facebook_clone/common/widgets/background_grad.dart';
import 'package:facebook_clone/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  //final List list = ["female", "male", "others", "prefer not to say"];

  
  @override
  Widget build(BuildContext context) {

    //final int count = list.length;

    return Scaffold(
      body: BackgroundGradient1(

        child: Container(),
        ),
    );
  }
}