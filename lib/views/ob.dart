import 'package:fitzone/views/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ob extends StatefulWidget {
  const Ob({super.key});

  @override
  State<Ob> createState() => _ObState();
}

class _ObState extends State<Ob> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              // First onboarding page
              Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/onboarding1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.3,
                    left: MediaQuery.of(context).size.width * 0.04,
                    child: Text(
                      "Fun Exercises",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.23,
                    left: MediaQuery.of(context).size.width * 0.04,
                    child: Text(
                      "Discover fun workouts, track your\nprogress and stay motivated!",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.height * 0.021,
                    bottom: MediaQuery.of(context).size.height * 0.14,
                    child: ElevatedButton(
                      onPressed: () {
                        if (controller.page?.round() == 0) {
                          controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Second onboarding page
              Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/onboarding2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.3,
                    left: MediaQuery.of(context).size.width * 0.04,
                    child: Text(
                      "Stay Healthy",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.23,
                    left: MediaQuery.of(context).size.width * 0.04,
                    child: Text(
                      "Get nutritional value of food, and\nhit your calories goal effortlessly!",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.height * 0.021,
                    bottom: MediaQuery.of(context).size.height * 0.14,
                    child: ElevatedButton(
                      onPressed: () {
                        if (controller.page?.round() == 1) {
                          controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Third onboarding page
              Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/onboarding3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.3,
                    left: MediaQuery.of(context).size.width * 0.04,
                    child: Text(
                      "Nutritional Insights",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.23,
                    left: MediaQuery.of(context).size.width * 0.04,
                    child: Text(
                      "Get nutritional value of food, and\nhit your calories goal effortlessly!",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.height * 0.021,
                    bottom: MediaQuery.of(context).size.height * 0.14,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          
          // Smooth Page Indicator
          Positioned(
            bottom: 20,
            left: MediaQuery.of(context).size.width * 0.5 - (16 * 3) / 2,  // Centering the indicator
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
