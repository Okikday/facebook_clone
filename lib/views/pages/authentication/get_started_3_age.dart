import 'package:facebook_clone/common/widgets/background_grad.dart';
import 'package:facebook_clone/common/widgets/button1.dart';
import 'package:facebook_clone/common/widgets/button_outline_rounded.dart';
import 'package:facebook_clone/common/widgets/space_padding.dart';
import 'package:facebook_clone/common/widgets/textfield1.dart';
import 'package:facebook_clone/common/widgets/wrap_in_sized_box1.dart';
import 'package:facebook_clone/utils/device/device_utils.dart';
import 'package:facebook_clone/views/pages/authentication/get_started_4_gender.dart';
import 'package:facebook_clone/views/pages/authentication/login_page.dart';
import 'package:flutter/material.dart';

class GetStartedEnterAge extends StatefulWidget {
  const GetStartedEnterAge({super.key});

  @override
  State<GetStartedEnterAge> createState() => _GetStartedEnterAgeState();
}

class _GetStartedEnterAgeState extends State<GetStartedEnterAge> {
  @override
  Widget build(BuildContext context) {
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
                "How old are you?",
                style: TextStyle(
                    fontSize: 32, color: Theme.of(context).colorScheme.primary),
              ),
            ),

            const SpacePadding1(height: 2.5,),

            WrapInSizedBox1(
                child: TextField1(
              hint: "18",
              label: "Age",
              height: 7.5,
              keyboardType: TextInputType.number,
            )),

            const SpacePadding1(height: 2.5,),

            Button1(
              text: "Next",
              width: 90,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GetStartedEnterGender()
                          ),
                );
                }
            ),

            const SpacePadding1(height: 2.5,),

            OutlinedButton1(text: "Use date of birth", onpressed: (){}, width: 90,),

            const SpacePadding1(
              height: 50,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginPage()
                          ),
                );
                },
                child: RichText(
                  text: const TextSpan(
                    text: "I already have an account",
                      style: TextStyle(color: Colors.blue)),
                ),
              ),
            ),

          ],
        ),
        ),
    );
  }
}