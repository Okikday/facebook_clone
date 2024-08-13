import 'package:facebook_clone/common/widgets/background_grad.dart';
import 'package:facebook_clone/common/widgets/button1.dart';
import 'package:facebook_clone/common/widgets/button_outline_rounded.dart';
import 'package:facebook_clone/common/widgets/space_padding.dart';
import 'package:facebook_clone/views/pages/authentication/get_started_1_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/device/device_utils.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {

  @override
  Widget build(BuildContext context) {
    final double width = DeviceUtils.getScreenWidth(context);
    final double height = DeviceUtils.getScreenHeight(context);
    return Scaffold(

      body: BackgroundGradient1(
        //Height: 0.1 + 0.25 + 0.01 + 0.2 +
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: BackButton(),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: width,
                  child: Text(
                      "Join Facebook",
                      style: TextStyle(fontSize: 32, color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),


              Container(
                width: width * 0.9,
                height: height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/facebook_get_started.jpg")
                  )
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: width,
                  height: height * 0.1,
                  child: Text(
                    "Create an account to connect with friends, family and communities of people who share your interests",
                    style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),

              Button1(
                  text: "Get started",
                  width: 90,
                  onpressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedEnterName()),);
              }
              ),

              const SpacePadding1(height: 2.5,),

              OutlinedButton1(text: "I already have an account", width: 90, onpressed: (){},)
            ],
                )
      ),
    );
  }
}
