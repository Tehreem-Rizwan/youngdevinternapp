import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:young_dev_intern/AboutUs.dart';
import 'package:young_dev_intern/Internships.dart';
import 'package:young_dev_intern/Home/homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image at the bottom
        Container(
          width: double.infinity,
          height: 720,
          child: Image.asset(
            'assets/images/footer-bg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Text overlay
        Positioned(
          bottom:
              5, // Adjust this value to position the text above the bottom edge
          left: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Quick Links',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height:
                      10), // Add spacing between the "Quick Links" and the buttons
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF8e44ad),
                    size: 15,
                  ), // Back arrow icon for Home
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: Color.fromARGB(255, 176, 172, 172),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF8e44ad),
                    size: 15,
                  ), // Back arrow icon for About
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => About()));
                    },
                    child: Text(
                      'About',
                      style: TextStyle(
                        color: Color.fromARGB(255, 176, 172, 172),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF8e44ad),
                    size: 15,
                  ), // Back arrow icon for Internships
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Internships()));
                    },
                    child: Text(
                      'Internships',
                      style: TextStyle(
                        color: Color.fromARGB(255, 176, 172, 172),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Contact Info',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Color(0xFF8e44ad),
                    size: 18,
                  ), // Back arrow icon for Internships
                  TextButton(
                    onPressed: () async {
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: 'Youngdevinterns60@gmail.com',
                      );
                      if (await canLaunchUrl(emailLaunchUri)) {
                        await launchUrl(emailLaunchUri);
                      } else {
                        // Handle the error when the email app cannot be launched
                        print('Could not launch email client');
                      }
                    },
                    child: Text(
                      'Youngdevinterns60@gmail.com',
                      style: TextStyle(
                        color: Color.fromARGB(255, 176, 172, 172),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_city,
                    color: Color(0xFF8e44ad),
                    size: 18,
                  ), // Back arrow icon for Internships
                  TextButton(
                    onPressed: () async {
                      final String locationUrl =
                          'https://www.google.com/maps/search/?api=1&query=Pakistan,+Islamabad';
                      if (await canLaunchUrl(Uri.parse(locationUrl))) {
                        await launchUrl(Uri.parse(locationUrl));
                      } else {
                        // Handle the error when the map cannot be opened
                        print('Could not launch the map.');
                      }
                    },
                    child: Text(
                      'Pakistan - Islamabad',
                      style: TextStyle(
                        color: Color.fromARGB(255, 176, 172, 172),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Follow Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.facebook,
                    color: Color(0xFF8e44ad),
                    size: 18,
                  ), // Back arrow icon for Internships
                  TextButton(
                    onPressed: () async {
                      const String facebookUrl =
                          'https://www.facebook.com/profile.php?id=61552048663871&sk=reels_tab';

                      if (await canLaunchUrl(Uri.parse(facebookUrl))) {
                        await launchUrl(Uri.parse(facebookUrl));
                      } else {
                        // Handle the error when the Facebook page cannot be launched
                        print('Could not launch Facebook page');
                      }
                    },
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                        color: Color.fromARGB(255, 176, 172, 172),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.linkedin,
                    color: Color(0xFF8e44ad),
                    size: 18,
                  ), // Back arrow icon for Internships
                  TextButton(
                    onPressed: () async {
                      const String linkedinUrl =
                          'https://www.linkedin.com/company/youngdev-intern/mycompany/';

                      if (await canLaunchUrl(Uri.parse(linkedinUrl))) {
                        await launchUrl(Uri.parse(linkedinUrl));
                      } else {
                        print('Could not launch LinkedIn page');
                      }
                    },
                    child: Text(
                      'LinkedIn',
                      style: TextStyle(
                        color: Color.fromARGB(255, 176, 172, 172),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey, // Color of the line
                thickness: 2, // Thickness of the line
                indent: 10, // Left spacing
                endIndent: 10, // Right spacing
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                alignment: WrapAlignment.center, // Center the content
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(text: "Created By "),
                        TextSpan(
                          text: 'YoungDev Interns',
                          style: TextStyle(
                            color: Color(0xFF8e44ad), // Purple color
                          ),
                        ),
                        TextSpan(text: " | All Rights Reserved!"),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ],
    );
  }
}
