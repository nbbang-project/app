import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:n_bbang/screens/auth/sign_in_screen.dart';
import 'package:n_bbang/widgets/custom_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(
      const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => SignInScreen()
          )
        );
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
      overlays: SystemUiOverlay.values
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
