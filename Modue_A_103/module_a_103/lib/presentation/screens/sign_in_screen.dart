import 'package:flutter/material.dart';
import 'package:module_a_103/presentation/components/custom_button.dart';
import 'package:module_a_103/presentation/components/custom_text_field.dart';
import 'package:module_a_103/presentation/screens/sign_up_screen.dart';

import '../components/custom_button2.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void signIn() {
    String id = _idController.text;
    String password = _passwordController.text;

    if (id.contains(' ')) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('사용자 이름에는 공백이 불가합니다')));
      return;
    }
    if (id.length < 4 && password.length < 4) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('사용자 이름과 비밀번호는 4자 이상이어야 합니다')));
      return;
    }
    if (id.length < 4) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('사용자 이름은 4자 이상이어야 합니다')));
      return;
    }
    if (password.length < 4) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('비밀번호는 4자 이상이어야 합니다')));
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Text(
                    'MY Health DATA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Image.asset('assets/images/symbol.png', width: 160, height: 160),
              SizedBox(height: 30),
              Text(
                'Please enter your information.',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 35),
              CustomTextField(
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                controller: _idController,
              ),
              SizedBox(height: 15),
              CustomTextField(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
                controller: _passwordController,
              ),
              SizedBox(height: 30),
              CustomButton(
                onTap: () {
                  signIn();
                },
                text: 'Sign In',
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(color: Colors.grey.shade100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton2(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      text: 'Sign Up',
                    ),
                    SizedBox(height: 10),
                    CustomButton2(
                      onTap: () {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text('기능 준비 중입니다')));
                      },
                      text: 'Password Reset',
                      isOutline: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
