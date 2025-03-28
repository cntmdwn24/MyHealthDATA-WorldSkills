import 'package:flutter/material.dart';
import 'package:module_a_103/presentation/components/custom_button.dart';
import 'package:module_a_103/presentation/components/custom_button2.dart';
import 'package:module_a_103/presentation/components/custom_text_field.dart';
import 'package:module_a_103/presentation/screens/profile_and_target_screen.dart';
import 'package:module_a_103/presentation/screens/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff393939),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen()),
              );
            },
            icon: Icon(Icons.arrow_back_outlined, color: Colors.white),
          ),
          title: Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'NotoSansKR',
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Text(
                    'Your information,',
                    style: TextStyle(
                      color: Color(0xff393939),
                      fontSize: 30,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 45),
                CustomTextField(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'UserID',
                ),
                SizedBox(height: 15),
                CustomTextField(
                  prefixIcon: Icon(Icons.badge_outlined),
                  hintText: 'Username',
                ),
                SizedBox(height: 15),
                CustomTextField(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Password',
                ),
                SizedBox(height: 15),
                CustomTextField(
                  prefixIcon: Icon(Icons.lock_reset),
                  hintText: 'Confirm Password',
                ),
                SizedBox(height: 45),
                CustomButton(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileAndTargetScreen(),
                      ),
                    );
                  },
                  text: 'Sign Up',
                ),
                SizedBox(height: 70),
                Container(
                  width: double.infinity,
                  height: 190,
                  decoration: BoxDecoration(color: Colors.grey.shade100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton2(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                          );
                        },
                        text: 'Sign In',
                        isOutline: true,
                      ),
                      SizedBox(height: 15),
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
      ),
    );
  }
}
