import 'package:fitzone/views/featureexercise.dart';
import 'package:fitzone/views/food.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final PageController controller = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FitZone: Your gym guide",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Features",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.fitness_center,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Exercise",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.local_dining,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Diet",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.0,
                      right: MediaQuery.of(context).size.height * 0.01,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.close, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: Text(
                      "Communicate",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text("Share", style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Icon(Icons.policy),
                    title: Text("Privacy Policy"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.01,
              left: MediaQuery.of(context).size.width * 0.03,
            ),
            child: Text(
              "Quick Workout",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            child: PageView(
              controller: controller,
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.height * 0.009,
                  ),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.008,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Squats",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height *
                                      0.008,
                                ),
                                Text(
                                  "Squats are effective for building\nlower body strength and\nenhancing overall lower body",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.008,
                          ),
                          Image.asset('images/squats.png'),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.height * 0.009,
                  ),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.008,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Deadlift",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height *
                                      0.008,
                                ),
                                Text(
                                  "Deadlift are powerhouse\nexercise that primarily targets\nyour back,legs,& grip strength",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.008,
                          ),
                          Image.asset('images/deadlift.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Center(
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 2,
                  effect: WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    activeDotColor: Colors.black,
                    spacing: 8,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Featured Exercise",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.43),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Featureexercise()));
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                  
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Food()));
                  
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/jay.jpeg'),
                      )
                    )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.00,
                  ),
                  InkWell(
                    onTap: (){
                  
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Food()));
                  
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.03),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/advsquats.jpeg'),
                      )
                    )),
                    SizedBox(
                    height: MediaQuery.of(context).size.height*0.008,
                  ),
                  InkWell(
                    onTap: (){
                  
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Food()));
                  
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.0012),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/beginnerpd.jpeg'),
                  ))),
                ],
              ),
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Featureexercise()),
            );
          } else if (index == 1) {
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Food()),
            );
          }
        },
        selectedIconTheme: IconThemeData(color: Colors.pink),
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining, color: Colors.black),
            label: '',
          ),
        ],
      ),

      
    );
  }
}
