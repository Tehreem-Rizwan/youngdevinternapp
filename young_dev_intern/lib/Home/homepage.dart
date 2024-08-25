import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:young_dev_intern/AboutUs.dart';
import 'package:young_dev_intern/Footer.dart';
import 'package:young_dev_intern/Internships.dart';
import 'package:young_dev_intern/applynowform.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> gridImages = [
      "assets/images/icon-1.png",
      "assets/images/icon-2.png",
      "assets/images/icon-3.png",
      "assets/images/icon-4.png",
      "assets/images/icon-5.png",
      "assets/images/icon-6.png"
    ];

    final List<String> gridTexts = [
      "Multitalented",
      "Leaders",
      "Learners",
      "Developers",
      "Programmers",
      "IT Experts"
    ];

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 70,
          width: 70,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Image.asset(
              "assets/images/logo-1.png",
              width: 50, // Set the desired width
              height: 50, // Set the desired height
            ),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
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
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 450.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                ),
                items: [
                  buildCarouselItem(
                    "assets/images/home-slide-1.jpg",
                    "Explore Remote Internships",
                    "EMPOWERING \n TOMORROW'S \n DEVELOPERS \n TODAY",
                  ),
                  buildCarouselItem(
                    "assets/images/home-slide-2.jpg",
                    "Explore Remote Internships",
                    "DISCOVER YOUR \n SKILLS ",
                  ),
                  buildCarouselItem(
                    "assets/images/hom-slide-3.jpg",
                    "Explore Remote Internships",
                    "APPLY \n INTERNSHIPS FOR \n FREE",
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                "WE ARE HIRING",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.5, // Adjust aspect ratio for text
                ),
                itemCount: gridImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF8e44ad),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            gridImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              gridTexts[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),
            // Add the new section here
            Column(
              children: [
                Container(
                  height: 300,
                  padding: EdgeInsets.all(1),
                  child: Image.asset("assets/images/ab.jpg"),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 200,
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Text(
                        "About Us",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Welcome to YoungDev Interns - Your Gateway to Skill Development! ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 111, 109, 109),
                              fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => About()));
                        },
                        child: Text(
                          "Read More",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  height: 1690,
                  color: Colors.grey[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "OUR INTERNSHIPS",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ), // Black border with 2.0 width
                            borderRadius: BorderRadius.circular(
                                0), // Optional: rounded corners
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/images/im-1.jpg'),
                                SizedBox(height: 20),
                                Text(
                                  "Full-Stack Web",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'All The Tasks Will Be Assigned On\nBackend And Fronted Of The Website',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 111, 109, 109),
                                      fontSize: 14),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GoogleFormPage()));
                                  },
                                  child: Text(
                                    "Apply Now",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ), // Black border with 2.0 width
                            borderRadius: BorderRadius.circular(
                                0), // Optional: rounded corners
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/images/im-4.jpg'),
                                SizedBox(height: 20),
                                Text(
                                  "Android Development",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'The Tasks Will Be On Andriod Studio\nUsing Java/Kotlin And Xml',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 111, 109, 109),
                                      fontSize: 14),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GoogleFormPage()));
                                  },
                                  child: Text(
                                    "Apply Now",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ), // Black border with 2.0 width
                            borderRadius: BorderRadius.circular(
                                0), // Optional: rounded corners
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/images/im-5.jpg'),
                                SizedBox(height: 20),
                                Text(
                                  "Python Development",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Basic Tasks Of Python On Different\nModules',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 111, 109, 109),
                                      fontSize: 14),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GoogleFormPage()));
                                  },
                                  child: Text(
                                    "Apply Now",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Internships()));
                        },
                        child: Text(
                          "Browse More",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Spacer to push the image to the bottom
            SizedBox(height: 20),

            // Image with text overlay at the bottom
            Footer(),
          ],
        ),
      ),
    );
  }

  Widget buildCarouselItem(String imagePath, String subTitle, String title) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 180),
            child: Text(
              subTitle,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 0,
          left: 0,
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Internships()));
              },
              child: Text(
                "Browse Internships",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
