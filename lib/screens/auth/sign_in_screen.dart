import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_bbang/screens/auth/sign_up_screen.dart';
import 'package:n_bbang/widgets/custom_logo.dart';
import 'package:n_bbang/widgets/custom_simple_auth_btn.dart';
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
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Spacer(),
              const Center(
                  child: CustomLogo()
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
                    Text("자동로그인", style: TextStyle(fontFamily: "Paperlogy", fontSize: 15, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary.withOpacity(0.86)),),
                    const Spacer()
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
                    CustomTextBtn(text: "회원가입", onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const SignUpScreen()
                        )
                      );
                    }),
                    const Spacer()
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 50),
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 22),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Theme.of(context).colorScheme.primary.withOpacity(0.29))),
                        color: Theme.of(context).colorScheme.onSurface),
                    child: Row(
                          children: [
                            const Spacer(),
                            CustomSimpleAuthBtn(logo: "assets/images/g-logo.png", background: Colors.white, onPressed: () {},),
                            const SizedBox(width: 30,),
                            CustomSimpleAuthBtn(logo: "assets/images/n-logo.png", background: Colors.white, onPressed: () {},),
                            const SizedBox(width: 30,),
                            CustomSimpleAuthBtn(logo: "assets/images/k-logo.png", background: const Color(0xFFFFE300), onPressed: () {},),
                            const Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.onSurface,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      "간편 로그인 연동",
                      style: TextStyle(
                          fontFamily: "Paperlogy",
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                        color: Theme.of(context).colorScheme.primary
                      ),
                     ),
                  ),
                ],
              ),
              const Spacer()
            ],
          ),
        ),
    );
  }
}