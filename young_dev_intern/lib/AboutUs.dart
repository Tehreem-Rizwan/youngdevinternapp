import 'package:flutter/material.dart';
import 'package:young_dev_intern/Footer.dart';
import 'package:young_dev_intern/Internships.dart';
import 'package:young_dev_intern/Home/homepage.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: SizedBox(
            height: 70,
            width: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Image.asset("assets/images/logo-1.png"),
            ),
          ),
          title: const Text(
            'YoungDev Interns',
            style: TextStyle(fontSize: 26, color: Colors.black),
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "YoungDev Interns",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                title: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                title: Text(
                  "Internships",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Internships()));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/header-bg-1.png",
                        fit: BoxFit.fill,
                        height: 280,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Text(
                            "ABOUT US",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                padding: EdgeInsets.all(1),
                child: Image.asset("assets/images/ab.jpg"),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Why Choose Us?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "At YoungDev Interns, we're Committed To Fostering Talent And Offering Exceptional Learning Experiences. We Believe In Breaking Down Barriers To Entry By Providing Free, Remote Internship Opportunities That Empower Aspiring Developers To Kickstart Their Careers.\n\nWe offer a unique month-long internship program, allowing you to gain practical experience from the comfort of your own workspace. Each Month, Interns Will Tackle 3 To 4 Real-World Tasks, Giving You Hands-On Exposure To Industry-Relevant Projects. Upon Successful Completion Of The Internship, We Provide A Certificate To Recognize Your Dedication And Skills Gained During Your Time With Us.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 111, 109, 109), fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              Footer(),
            ],
          ),
        ));
  }
}
