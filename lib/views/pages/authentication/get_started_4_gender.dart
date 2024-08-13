import 'package:facebook_clone/common/widgets/background_grad.dart';
import 'package:facebook_clone/common/widgets/button1.dart';
import 'package:facebook_clone/common/widgets/space_padding.dart';
import 'package:facebook_clone/common/widgets/wrap_in_sized_box1.dart';
import 'package:facebook_clone/utils/constants/font_sizes.dart';
import 'package:facebook_clone/utils/device/device_utils.dart';
import 'package:facebook_clone/views/pages/authentication/get_started_5_mbl_num.dart';
import 'package:facebook_clone/views/pages/authentication/login_page.dart';
import 'package:flutter/material.dart';

class GetStartedEnterGender extends StatefulWidget {
  const GetStartedEnterGender({super.key});

  @override
  State<GetStartedEnterGender> createState() => _GetStartedEnterGenderState();
}

class _GetStartedEnterGenderState extends State<GetStartedEnterGender> {
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
                "What's your gender?",
                style: TextStyle(
                    fontSize: FontSizes.big, color: Theme.of(context).colorScheme.primary),
              ),
            ),
            const SpacePadding1(),
            WrapInSizedBox1(
              child: Text(
                "Enter the name you use in real life.",
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: FontSizes.medium),
              ),
            ),
            const SpacePadding1( height: 4,),

            Container(
              alignment: Alignment.center,
              width: DeviceUtils.getScreenWidth(context) * 0.9,
              height: 240,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: const Color.fromARGB(58, 178, 219, 252)),
              child: const Text("Male\nFemale\nBinary\nDenary💀\n😏", style: TextStyle(color: Colors.white),),
            ),

            const SpacePadding1(height: 2.5,),

            Button1(
              text: "Next",
              width: 90,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GetStartedEnterMobileNum()
                          ),
                );
                }
            ),

            const SpacePadding1(
              height: 35,
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
