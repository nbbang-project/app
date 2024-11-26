import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../widgets/custom_logo.dart';
import '../../widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final password1Controller = TextEditingController();
  final password2Controller = TextEditingController();

  bool _isLoading = false;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    password1Controller.dispose();
    password2Controller.dispose();
    super.dispose();
  }

  Future<void> _submitSignUp(
      String username, String email, String password1, String password2) async {
    final url = Uri.parse('http://127.0.0.1:8080/user/signup');
    final Map<String, String> userData = {
      'username': username,
      'email': email,
      'password1': password1,
      'password2': password2,
    };

    setState(() {
      _isLoading = true; // 로딩 시작
    });

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(userData),
      );

      setState(() {
        _isLoading = false; // 로딩 종료
      });

      final responseBody = json.decode(response.body);
      if (response.statusCode == 200) {
        _showDialog('Success', responseBody['message'] ?? 'Signup successful!');
      } else {
        _showDialog('Error', responseBody['message'] ?? 'Unknown error occurred');
      }
    } catch (e) {
      setState(() {
        _isLoading = false; // 로딩 종료
      });
      _showDialog('Error', 'Failed to connect to the server.');
    }
  }

  void _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const Center(child: CustomLogo()),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: CustomTextFormField(
                  hintText: '아이디',
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '아이디를 입력해주세요.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: CustomTextFormField(
                  hintText: '이메일',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '이메일을 입력해주세요.';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return '유효한 이메일 형식을 입력하세요.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: CustomTextFormField(
                  hintText: '비밀번호',
                  controller: password1Controller,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '비밀번호를 입력해주세요.';
                    } else if (value.length < 6) {
                      return '비밀번호는 6자 이상이어야 합니다.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: CustomTextFormField(
                  hintText: '비밀번호 확인',
                  controller: password2Controller,
                  obscureText: true,
                  validator: (value) {
                    if (value != password1Controller.text) {
                      return '비밀번호가 일치하지 않습니다.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 58,
                        child: FilledButton(
                          onPressed: _isLoading
                              ? null
                              : () {
                            if (_formKey.currentState!.validate()) {
                              _submitSignUp(
                                usernameController.text.trim(),
                                emailController.text.trim(),
                                password1Controller.text,
                                password2Controller.text,
                              );
                            }
                          },
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                                CupertinoColors.activeBlue),
                          ),
                          child: _isLoading
                              ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                              : const Text(
                            "회원가입",
                            style: TextStyle(
                                fontFamily: "Paperlogy",
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: SizedBox(
                        height: 58,
                        child: FilledButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                                Theme.of(context).colorScheme.onSurface),
                            side: const WidgetStatePropertyAll(
                                BorderSide(color: CupertinoColors.activeBlue)),
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
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(flex: 2)
            ],
          ),
        ),
      ),
    );
  }
}
