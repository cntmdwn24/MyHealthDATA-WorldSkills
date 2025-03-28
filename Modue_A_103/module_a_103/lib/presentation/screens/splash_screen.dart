import 'package:flutter/material.dart';
import 'package:module_a_103/presentation/providers/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashProvider.addListener(updateScreen);
      splashProvider.startAnimation(context);
    });
  }

  @override
  void dispose() {
    splashProvider.removeListener(updateScreen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: splashProvider.isStartSymbol ? 1 : 0,
              duration: Duration(seconds: 1),
              child: Image.asset(
                'assets/images/symbol.png',
                width: 180,
                height: 180,
              ),
            ),
            SizedBox(height: 15),
            AnimatedOpacity(
              opacity: splashProvider.isStartText ? 1 : 0,
              duration: Duration(seconds: 1),
              child: Text(
                'MY Health DATA',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
