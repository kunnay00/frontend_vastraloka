import 'package:flutter/material.dart';
import 'package:vastraloka/screens/login_page.dart';
import 'package:vastraloka/screens/signup.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(241, 250, 218, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            FadeTransition(
              opacity: _opacityAnimation,
              child: Text(
                "Let's Get Started!",
                style: TextStyle(fontSize: 30, color: Color.fromRGBO(45, 149, 150, 1), fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(height:40),
            FadeTransition(
              opacity: _opacityAnimation,
              child: Container(
                height: 500,
                width: 500,
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height:80),
            ScaleTransition(
              scale: _scaleAnimation,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(45, 149, 150, 1),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color.fromRGBO(241, 250, 218, 1)),
                  ),
                  child: Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Color.fromRGBO(241, 250, 218, 1)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color.fromRGBO(45, 149, 150, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}