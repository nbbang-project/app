import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSimpleAuthBtn extends StatelessWidget {

  final String logo;
  final Color background;
  final VoidCallback onPressed;

  const CustomSimpleAuthBtn({
    super.key,
    required this.logo,
    required this.background,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: background,
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            elevation: 1,
            side: BorderSide(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              width: 1.5
            ),
            shadowColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(300)
            )
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.all(10.w),
          child: Image.asset(logo, width: 30.w,)
        )
    );
  }
}

