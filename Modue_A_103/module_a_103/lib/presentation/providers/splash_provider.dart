import 'package:flutter/material.dart';
import 'package:module_a_103/presentation/screens/sign_in_screen.dart';

final splashProvider = SplashProvider();

class SplashProvider extends ChangeNotifier {
  bool isStartSymbol = false;
  bool isStartText = false;

  void startAnimation(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
    isStartSymbol = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 2));
    isStartText = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 2));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }
}
