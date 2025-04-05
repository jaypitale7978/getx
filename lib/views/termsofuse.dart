import 'package:fitzone/views/ob.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Termsofuse extends StatefulWidget {
  const Termsofuse({super.key});

  @override
  State<Termsofuse> createState() => _TermsofuseState();
}

class _TermsofuseState extends State<Termsofuse> {
  bool tou = false;
  void touu ()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool accepted = prefs.getBool('terms accepted') ?? false;
    setState(() {
      tou = accepted;
    });
    
  }

  void savetermsAccepted ()async{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
       prefs.setBool('terms accepted',true) ;
    }
  @override
  void initState() {
    touu();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Terms of Use",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 8, left: 8),
              child: Text(
                "Application is informing you about the app, that gives you many services and important information for safer and efficient use.",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
              child: Text(
                "User-Generated Content Policy(UGC) By pressing the Accept button",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  child: Image(image: AssetImage('images/toulock.png')),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 0, left: 10),
                    child: Text(
                      "I declare I have read and accepted the following condition of use.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 0, left: 15),
                  child: Image(image: AssetImage('images/toublock.png')),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      "If we find the app is being used outside its terms of use, we may restrict access to it.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 0),
                  child: Image(image: AssetImage('images/tousetting.png')),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 10,
                      right: 5,
                    ),
                    child: Text(
                      "Any type of modification to the app or its components is not allowed.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 15, right: 0),
                  child: Image(image: AssetImage('images/toudoc.png')),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10, right: 5),
                    child: Text(
                      "Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 0),
                  child: Image(image: AssetImage('images/toushare.png')),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10, right: 5),
                    child: Text(
                      "We do not share any kind of your Personal Data with third parties.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "You can find out more information by clicking on the Following link : Terms and conditions of use                  Following Link: Privacy policy.",
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(
              width: 170,
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: ElevatedButton(
                  onPressed: () {
                    savetermsAccepted();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Ob()));
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                      Colors.black,
                    ),
                  ),
                  child: Text(
                    "Accept",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                
              ),
              
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
                image: DecorationImage(
                  image: AssetImage('images/touwomen.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
