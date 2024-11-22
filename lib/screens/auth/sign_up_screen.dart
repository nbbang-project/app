import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_bbang/screens/auth/sign_in_screen.dart';

import '../../widgets/custom_logo.dart';
import '../../widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(),
          const Center(child: CustomLogo()),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: CustomTextFormField(
                hint: "이름"),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: CustomTextFormField(hint: "아이디"),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: CustomTextFormField(
                hint: "비밀번호", obscureText: true, hideIcon: true),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: CustomTextFormField(
                hint: "비밀번호 확인", obscureText: true, hideIcon: true),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 58,
                    child: FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                        WidgetStatePropertyAll(CupertinoColors.activeBlue),

                      ),
                      child: const Text(
                        "회원가입",
                        style: TextStyle(
                            fontFamily: "Paperlogy",
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  )
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: SizedBox(
                    height: 58,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.onSurface),
                        side: const WidgetStatePropertyAll(BorderSide(color: CupertinoColors.activeBlue)),
                      ),
                      child: const Text(
                        "로그인",
                        style: TextStyle(
                            fontFamily: "Paperlogy",
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: CupertinoColors.activeBlue),
                      ),
                    ),
                  )
                )
              ],
            ),
          ),
          Spacer(flex: 2,)
        ],
      ),
    ));
  }
}
