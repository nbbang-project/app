import 'package:flutter/material.dart';
import 'package:n_bbang/screens/auth/sign_in_screen.dart';

import '../../widgets/custom_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SignInScreen()
          )
        );
      }
    );
    return  Scaffold(
        body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomLogo(),
                const SizedBox(height: 30,),
                Text("더치페이를 보다 확실하고 깔끔하게!", style: TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.6), fontSize: 18, fontFamily: "Paperlogy", fontWeight: FontWeight.w600),)
              ],
            )
        ),
      );
  }
}
