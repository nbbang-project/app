import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_bbang/widgets/custom_logo.dart';

import '../../widgets/custom_check_box.dart';
import '../../widgets/custom_text_btn.dart';
import '../../widgets/custom_text_form_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
              child: CustomTextFormField(hint: "아이디"),
            ),
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: FilledButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                    ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomCheckBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  CustomTextBtn(text: "아이디 찾기", onPressed: () {}),
                  CustomTextBtn(text: "비밀번호 찾기", onPressed: () {}),
                  const Spacer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
