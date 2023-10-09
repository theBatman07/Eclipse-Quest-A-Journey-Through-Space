import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/HomepageScreen.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import '../Quiz/lib/widgets/provinceSmallDetailsCard.dart';

class RiversListScreen extends StatelessWidget {
  const RiversListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow.shade900,
        body: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            child: Stack(children: [
              Positioned(
                  child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Container(
                      child: Text(
                        "The",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "BubblegumSans",
                            letterSpacing: 3,
                            color: Colors.green),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30, top: 5),
                      child: Text(
                        "Celestial Dance",
                        style: TextStyle(
                            fontSize: 43,
                            fontFamily: "ShinyBalloonDemo",
                            letterSpacing: 2,
                            color: Colors.green),
                      ),
                    ),
                  ],
                ),
              )),
              Positioned(
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProvinceSmallDetailsCard(
                        "assets/celestailDance.webp",
                        "The Celestial Dance: What Leads to the Perfect Alignment of Sun, Moon, and Earth?",
                        Colors.pinkAccent,
                        Colors.deepOrangeAccent,
                        "The alignment of the Sun, Moon, and Earth happens because of gravity. Imagine the Moon is like a magnet, and it's attracted to the Earth because of gravity. At the same time, the Earth and Moon are both attracted to the Sun because it's much bigger and has a stronger gravitational pull. When all three line up in a straight line, we see an eclipse. It's like a cosmic balancing act, where gravity makes the Moon move around Earth, and Earth and the Moon move around the Sun, occasionally creating this special alignment.",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/earthg.webp",
                        "Gravity's Cosmic Dance",
                        Colors.red,
                        Colors.deepOrange,
                        "Gravity is like a cosmic magnet that pulls things together in space. The Earth and Moon are attracted to each other because of gravity, and they both feel the pull of the Sun's gravity too. When they all line up in a straight row, it's called an alignment. This gravitational dance makes cool events like eclipses happen!",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/earthTug.webp",
                        "Celestial Tug of War",
                        Colors.deepPurple,
                        Colors.cyan,
                        "Picture a game of tug of war in space! The Sun's strong gravity pulls on the Earth and the Moon, trying to keep them close. Sometimes, the Sun, Moon, and Earth line up because of this cosmic tug of war. That's when we get to see amazing things like solar and lunar eclipses.",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/earthPuzzle.webp",
                        "The Alignment Puzzle",
                        Color.fromARGB(255, 0, 78, 3),
                        Colors.teal,
                        "Think of the Sun, Moon, and Earth as pieces of a cosmic puzzle. Sometimes, these pieces fit perfectly in a straight line, creating an alignment. It's like solving a space puzzle in the sky! When they align, we get to witness extraordinary events like eclipses. It's a celestial mystery waiting to be solved!",
                      ),
                    ]),
              ),
              Positioned(
                  top: 15,
                  left: 15,
                  child: GestureDetector(
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(99, 128, 124, 124),
                          borderRadius: BorderRadius.circular(7)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomepageScreen())),
                    },
                  )),
              Positioned(
                  bottom: 10,
                  child: Column(
                    children: [],
                  ))
            ]),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
