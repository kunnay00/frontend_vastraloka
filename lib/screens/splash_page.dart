import 'package:flutter/material.dart';
import 'package:vastraloka/screens/landing_page.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward().whenComplete(navigateToHome);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 221, 1),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FadeTransition(
              opacity: _opacityAnimation,
              child: Image.asset(
                'assets/images/logo.png',
                width: 1000,
                height: 400,
              ),
            ),
            const SizedBox(height: 115),
          ],
        ),
      ),
    );
  }
}