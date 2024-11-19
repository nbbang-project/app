import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 47,
              height: 47,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: CupertinoColors.activeBlue
              ),
            ),
            Text("N", style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "Paperlogy", fontSize: 36, color: Theme.of(context).colorScheme.secondary),),
          ],
        ),
        Text(".BBANG", style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "Paperlogy", fontSize: 36, color: Theme.of(context).colorScheme.primary),)
      ],
    );
  }
}
