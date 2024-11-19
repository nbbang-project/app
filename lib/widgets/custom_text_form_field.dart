import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {

  final String hint;
  final bool obscureText;
  final bool hideIcon;

  const CustomTextFormField({
    super.key,
    required this.hint,
    this.obscureText = false,
    this.hideIcon = false
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText; // 초기 상태 설정
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
          fontFamily: "Paperlogy",
          fontWeight: FontWeight.w500,
          fontSize: 16
      ),
      obscureText: _obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.hideIcon
            ? Padding(
          padding: const EdgeInsets.only(right: 5), // 아이콘 패딩 추가
          child: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText; // 비밀번호 표시 토글
              });
            },
          ),
        )
            : null,
          filled: true,
          fillColor: Colors.white.withOpacity(0.03),
          labelText: widget.hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(200),
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(200),
              borderSide: const BorderSide(
                  color: CupertinoColors.activeBlue
              )
          ),
          floatingLabelStyle: const TextStyle(
              fontFamily: "Paperlogy",
              color: CupertinoColors.activeBlue
          ),
          labelStyle: TextStyle(
              fontFamily: "Paperlogy",
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
              fontSize: 16
          ),
          contentPadding: const EdgeInsets.fromLTRB(25, 15, 25, 15)
      ),
    );
  }
}
