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

class _SignInScreenState extends State<SignInScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(),
              const Center(
                child: CustomLogo()
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: CustomTextFormField(hint: "아이디"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: CustomTextFormField(hint: "비밀번호", obscureText: true, hideIcon: true),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(CupertinoColors.activeBlue),
                      ),
                      child: const Text("로그인", style: TextStyle(fontFamily: "Paperlogy",fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CustomCheckBox(),
                    const SizedBox(width: 10,),
                    Text("자동로그인", style: TextStyle(fontFamily: "Paperlogy", fontSize: 15, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary.withOpacity(0.86)),)
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
                    Text("|", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, fontFamily: "Paperlogy", color: Theme.of(context).colorScheme.primary.withOpacity(0.68)),),
                    CustomTextBtn(text: "비밀번호 찾기", onPressed: () {}),
                    Text("|", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, fontFamily: "Paperlogy", color: Theme.of(context).colorScheme.primary.withOpacity(0.68)),),
                    CustomTextBtn(text: "회원가입", onPressed: () {}),
                    const Spacer()
                  ],
                ),
              ),
              Spacer(flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}
