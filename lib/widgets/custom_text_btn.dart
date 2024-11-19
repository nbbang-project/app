import 'package:flutter/material.dart';

class CustomTextBtn extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const CustomTextBtn({super.key,
    required this.text,
    required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: const ButtonStyle(
            padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 3)
            ),
            minimumSize: WidgetStatePropertyAll(Size.zero)),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: "Paperlogy",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.68),
              fontSize: 13),
        )
    );
  }
}
