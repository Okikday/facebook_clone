import 'package:facebook_clone/common/widgets/background_grad.dart';
import 'package:facebook_clone/common/widgets/button1.dart';
import 'package:facebook_clone/common/widgets/button_outline_rounded.dart';
import 'package:facebook_clone/common/widgets/space_padding.dart';
import 'package:facebook_clone/common/widgets/textfield1.dart';
import 'package:facebook_clone/utils/device/device_utils.dart';
import 'package:facebook_clone/views/pages/authentication/getting_started.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double width = DeviceUtils.getScreenWidth(context);
    final double height = DeviceUtils.getScreenHeight(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackgroundGradient1(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Visibility(
              visible: DeviceUtils.isKeyboardVisible(context) ? false : true,
              maintainSize: false,
              child: SizedBox(
                width: width * 0.5,
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("English(US)", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                       Icon(Icons.keyboard_arrow_down, color: Theme.of(context).colorScheme.primary,),
                    ],),
                    ),
              ),
            ),

            const SpacePadding1(height: 8,),

            Image.asset("assets/logos/facebook_circle_logo1.png", width: 50, height: 50,),

            const SpacePadding1(height: 10,),

            TextField1(hint: "Mobile number or email", label: "Mobile number", width: 90, height: 8,),

            const SpacePadding1(height: 2,),

            TextField1(hint: "Password", label: "Password", width: 90, height: 8,),
            const SpacePadding1(height: 2,),

            Button1(text: "Log in", width: 90, onpressed: (){},),
            const SpacePadding1(height: 3,),

            Visibility(
              visible: DeviceUtils.isKeyboardVisible(context) ? false : true,
              maintainSize: false,
              child: Transform.scale(
                scale: 0.9,
                child: SizedBox(
                  width: DeviceUtils.getScreenWidth(context) * 0.5,
                  child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("forgot password?", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                        Icon(Icons.keyboard_arrow_down, color: Theme.of(context).colorScheme.primary,),
                      ],),
                  ),
                ),
              ),
            ),

            const SpacePadding1(height: 10,),

            Visibility(
                visible: DeviceUtils.isKeyboardVisible(context) ? false : true,
                maintainSize: false,
                child: OutlinedButton1(text: "Create new account", onpressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GettingStarted()),);
                },),
            ),

            Visibility(
              visible: DeviceUtils.isKeyboardVisible(context) ? true : false,
              child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, DeviceUtils.getKeyboardHeight(context))/2,),
            )




          ],
        ),
      ),
    );
  }
}