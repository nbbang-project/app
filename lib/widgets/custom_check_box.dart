import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {

  bool isAutoLoginEnabled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isAutoLoginEnabled = !isAutoLoginEnabled;
        });
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: CupertinoColors.activeBlue, width: 2),
          color: isAutoLoginEnabled ? CupertinoColors.activeBlue : Colors.transparent,
        ),
        child: isAutoLoginEnabled
            ? const Icon(Icons.check, color: Colors.white, size: 14)
            : null,
      ),
    );
  }
}
