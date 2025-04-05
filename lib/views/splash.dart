import 'package:fitzone/views/ob.dart';
import 'package:fitzone/views/termsofuse.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _checktermsAccepted();
    super.initState();
  }

  void _checktermsAccepted() async {
    await Future.delayed(Duration(seconds: 2));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool accepted = prefs.getBool('terms accepted') ?? false;

    if (accepted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Ob()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Termsofuse()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.27),
                  Image.asset(
                    'images/splashlogo.png',
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.65,
                  ),

                  Text(
                    "FitZone: Your Gym Guide",
                    style: TextStyle(
                      fontSize: 16.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.24),
                  Image.asset('images/splashgirl.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
