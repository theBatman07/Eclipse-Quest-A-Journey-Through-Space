import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/contact_us.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: SingleChildScrollView(
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bgnew.jpg'), fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    top: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(0, 3, 168, 244),
                      child: Image(
                        image: AssetImage("assets/eclipse2017.gif"),
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                  bottom: 130,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "About Us",
                              style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 40,
                                  color: Colors.white),
                            ),
                            Text(
                              "Summary: Eclipses are extraordinary celestial events that transform our view of the Sun and Moon. When Earth, the Moon, and the Sun align, we witness the magic of eclipses. Our mission is to create engaging games, activities, and stories to enlighten young minds about the mechanics behind these cosmic wonders, including eclipse seasons, the 'why' and 'how' of eclipses, and the intriguing question of why only some Earthlings can witness them.\n\nBackground: Eclipses are not just visually stunning; they are also a playground for science. For over a century, they have unveiled secrets of the Sun, Earth, and space. Solar eclipses, in particular, have been instrumental in understanding the Sun's structure, confirming general relativity, and even discovering new elements. With four types of solar eclipses and three lunar eclipse variations, the cosmos provides us with a delightful variety of eclipses.\n\nEclipse seasons, occurring twice a year, enable these celestial wonders. They last around 35 days and inspire not only artists and musicians but also countless scientific breakthroughs.\n\nTotal solar eclipses are especially significant. They unveil the Sun's corona and offer unique insights into Earth's atmosphere. These localized celestial events impact our technology, satellites, and communication systems, emphasizing the importance of studying the ionosphere.\n\nObjectives: Our goal is to present the magic of eclipses through various mediums, answering questions such as:\n\nHow do eclipses occur?\nWhy do some people on Earth see eclipses while others don't?\nWhat leads to the alignment of the Sun, Moon, and Earth?\nHow frequently do eclipses happen?\nHow do scientists predict eclipse timings and locations?\nWhat distinguishes a lunar eclipse from a solar eclipse?\nWhat is an eclipse season, and why do they occur roughly every six months?\n\nTech Stack: We harnessed the power of Flutter and Dart to create interactive and educational experiences that unravel the mysteries of eclipses. Our aim is to inspire curiosity, foster learning, and ignite a lifelong love for the cosmos in young minds.\n\nThank you for joining us on this celestial journey. Together, we can unveil the beauty and science of eclipses and share the wonder of the cosmos with the world.",
                              style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(197, 255, 142, 142),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                // Positioned(
                //   bottom: 50,
                //   child: SingleChildScrollView(
                //     child: ElevatedButton(
                //       onPressed: () => {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => ContactUs())),
                //       },
                //       // shape: RoundedRectangleBorder(
                //       //     borderRadius: BorderRadius.circular(80.0)),
                //       // padding: const EdgeInsets.all(0.0),
                //       child: Ink(
                //         decoration: const BoxDecoration(
                //           color: Color(0xFFF57F17),
                //           borderRadius: BorderRadius.all(
                //             Radius.circular(80.0),
                //           ),
                //         ),
                //         child: Container(
                //           constraints: const BoxConstraints(
                //               minWidth: 320.0,
                //               minHeight:
                //                   50.0), // min sizes for Material buttons
                //           alignment: Alignment.center,
                //           child: const Text(
                //             'Contact Us',
                //             textAlign: TextAlign.center,
                //             style: TextStyle(
                //                 fontFamily: "BubblegumSans",
                //                 color: Colors.white,
                //                 fontWeight: FontWeight.w400,
                //                 fontSize: 30),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
