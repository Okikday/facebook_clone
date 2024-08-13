import 'package:facebook_clone/common/widgets/background_grad.dart';
import 'package:facebook_clone/common/widgets/button1.dart';
import 'package:facebook_clone/common/widgets/button_outline_rounded.dart';
import 'package:facebook_clone/common/widgets/space_padding.dart';
import 'package:facebook_clone/common/widgets/textfield1.dart';
import 'package:facebook_clone/common/widgets/wrap_in_sized_box1.dart';
import 'package:facebook_clone/utils/constants/font_sizes.dart';
import 'package:facebook_clone/views/pages/authentication/login_page.dart';
import 'package:flutter/material.dart';

class GetStartedEnterMobileNum extends StatefulWidget {
  const GetStartedEnterMobileNum({super.key});

  @override
  State<GetStartedEnterMobileNum> createState() =>
      _GetStartedEnterMobileNumState();
}

class _GetStartedEnterMobileNumState extends State<GetStartedEnterMobileNum> {
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
                "What's your mobile number?",
                style: TextStyle(
                    fontSize: FontSizes.extraMedium,
                    color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            const SpacePadding1(),
            WrapInSizedBox1(
              child: Text(
                "Enter the mobile number where you can be contacted. No one will see this on your profile.",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: FontSizes.small),
              ),
            ),
            const SpacePadding1(
              height: 2.5,
            ),

            WrapInSizedBox1(
                child: TextField1(
              hint: "+1234567890",
              label: "Mobile number",
              height: 7.5,
              keyboardType: TextInputType.number,
            )),

            const SpacePadding1(),

            WrapInSizedBox1(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          "You may receive WhatsApp and SMS notifications from us. ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: FontSizes.small)),
                  const TextSpan(
                      text: "Learn more",
                      style: TextStyle(color: Color(0xff0B65D3),),),
                ]),
              ),
            ),

            const SpacePadding1(height: 2.5,),

            Button1(
              text: "Next",
              width: 90,
              onpressed: () {}
            ),

            const SpacePadding1(height: 2.5,),

            OutlinedButton1(text: "Use date of birth", onpressed: (){}, width: 90,),

            const SpacePadding1(
              height: 45,
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
