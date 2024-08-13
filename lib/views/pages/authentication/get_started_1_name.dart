import 'package:facebook_clone/common/widgets/background_grad.dart';
import 'package:facebook_clone/common/widgets/button1.dart';
import 'package:facebook_clone/common/widgets/space_padding.dart';
import 'package:facebook_clone/common/widgets/textfield1.dart';
import 'package:facebook_clone/common/widgets/wrap_in_sized_box1.dart';
import 'package:facebook_clone/views/pages/authentication/get_started_2_birthday_date.dart';
import 'package:flutter/material.dart';


class GetStartedEnterName extends StatefulWidget {
  const GetStartedEnterName({super.key});

  @override
  State<GetStartedEnterName> createState() => _GetStartedEnterNameState();
}

class _GetStartedEnterNameState extends State<GetStartedEnterName> {
  @override
  Widget build(BuildContext context) {
    // final double width = DeviceUtils.getScreenWidth(context);
    // final double height = DeviceUtils.getScreenHeight(context);
    return Scaffold(
      body: BackgroundGradient1(
          child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: BackButton(),
          ),

          WrapInSizedBox1(
            child: Text(
              "What's your name?",
              style: TextStyle(
                  fontSize: 32, color: Theme.of(context).colorScheme.primary),
            ),
          ),

          WrapInSizedBox1(
            child: Text(
            "Enter the name you use in real life.",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          ),

          const SpacePadding1(height: 4,),

          WrapInSizedBox1(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField1(
                  hint: "First name",
                  label: "First name",
                  width: 42.5,
                  height: 7,
                  addXIcon: true,
                ),

                TextField1(
                  hint: "Last name",
                  label: "Last name",
                  width: 42.5,
                  height: 7,
                  addXIcon: true,
                )
              ],
            ),
          ),

          const SpacePadding1(height: 4,),
          Button1(
            text: "Next",
            onpressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const GetStartedEnterBirthdayDate(),
            ),);
            },
            width: 90,
          ),
        ],
      )),
    );
  }
}
