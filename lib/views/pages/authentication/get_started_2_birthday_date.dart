import 'package:facebook_clone/common/widgets/background_grad.dart';
import 'package:facebook_clone/common/widgets/button1.dart';
import 'package:facebook_clone/common/widgets/space_padding.dart';
import 'package:facebook_clone/common/widgets/textfield1.dart';
import 'package:facebook_clone/views/pages/authentication/get_started_3_age.dart';
import 'package:facebook_clone/views/pages/authentication/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/wrap_in_sized_box1.dart';

class GetStartedEnterBirthdayDate extends StatefulWidget {
  const GetStartedEnterBirthdayDate({super.key});

  @override
  State<GetStartedEnterBirthdayDate> createState() =>
      _GetStartedEnterBirthdayDateState();
}

class _GetStartedEnterBirthdayDateState
    extends State<GetStartedEnterBirthdayDate> {
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
                "What's your birthday?",
                style: TextStyle(
                    fontSize: 32, color: Theme.of(context).colorScheme.primary),
              ),
            ),
            const SpacePadding1(),
            WrapInSizedBox1(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          "Choose your date of birth. You can always make this private later. ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16)),
                  const TextSpan(
                      text: "Why do I need to provide my birthday?",
                      style: TextStyle(color: Color(0xff0B65D3)))
                ]),
              ),
            ),
            const SpacePadding1(
              height: 4,
            ),
            WrapInSizedBox1(
                child: TextField1(
                  keyboardType: TextInputType.datetime,
              hint: "August 1, 2024",
              label: "Birthday (0 year old)",
              height: 7.5,
              onpressed: () {
                showDatePicker(
                  context: context,
                  firstDate: DateTime(1960),
                  lastDate: DateTime(2024),
                );
              },
            )),
            const SpacePadding1(
              height: 3,
            ),
            Button1(
              text: "Next",
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GetStartedEnterAge()
                          ),
                );
              },
              width: 90,
            ),
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
