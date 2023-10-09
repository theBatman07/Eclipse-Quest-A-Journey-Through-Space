import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/provinceModel.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import '../Quiz/lib/widgets/provinceSmallDetailsCard.dart';

class ProvincesListScreen1 extends StatefulWidget {
  const ProvincesListScreen1({Key? key}) : super(key: key);

  @override
  State<ProvincesListScreen1> createState() => _ProvincesListScreenState1();
}

class _ProvincesListScreenState1 extends State<ProvincesListScreen1> {
  List<RiverModel> provinceList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow.shade900,
        //appBar: AppBar(),
        body: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Positioned(
                  child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    // Container(
                    //   // height: MediaQuery.of(context).size.height / 5,
                    //   child: Text(
                    //     "Solving the Mystery of",
                    //     style: TextStyle(
                    //         fontSize: 35,
                    //         fontFamily: "BubblegumSans",
                    //         letterSpacing: 2,
                    //         color: Colors.green),
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 30, top: 5),
                      child: Text(
                        "Lunar vs Solar Eclipse",
                        style: TextStyle(
                            fontSize: 38,
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
                        "assets/elipseHappen.gif",
                        "Lunar vs Solar Eclipse",
                        Color.fromARGB(255, 253, 61, 47),
                        Colors.pinkAccent,
                        "A lunar eclipse happens when the Earth comes between the Sun and the Moon. Earth's shadow is cast on the Moon, making it look like it's slowly getting darker and turning a reddish color. It's like Earth is blocking the Sun's light from reaching the Moon.\nOn the other hand, a solar eclipse occurs when the Moon moves between the Sun and Earth. It blocks out the Sun's light, casting a shadow on Earth. During a solar eclipse, the sky goes dark for a few minutes, and you can see the Sun's outer ring, called the \"corona.\"\nSo, in a nutshell, during a lunar eclipse, Earth's shadow covers the Moon, and during a solar eclipse, the Moon's shadow covers the Sun.",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/eclipse2017.gif",
                        "The Solar Eclipse",
                        Colors.deepPurple,
                        Colors.cyan,
                        "A solar eclipse is when the Moon moves between the Sun and Earth. It blocks the Sun's light, making the sky dark for a short while. During a solar eclipse, you might see the Sun's outer ring, called the 'corona.' It's like the Moon is doing a magic trick with the Sun!",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/lunarEclipse.gif",
                        "The Lunar Eclipse",
                        // Colors.teal,
                        // Colors.cyan,
                        Color.fromARGB(255, 0, 78, 3),
                        Colors.teal,
                        "A lunar eclipse happens when the Earth gets between the Sun and the Moon. Earth's shadow falls on the Moon, making it look darker and sometimes turning it red. It's like Earth is playing hide-and-seek with the Moon!",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/elipseHappen.gif",
                        "The Eclipse Duo",
                        // Colors.teal,
                        // Colors.cyan,
                        Color.fromARGB(255, 0, 78, 3),
                        Colors.teal,
                        "Lunar and solar eclipses are like two different shows in the sky. In a lunar eclipse, Earth's shadow covers the Moon, while in a solar eclipse, the Moon hides the Sun. Both are amazing events, but they happen for different reasons, giving us a fantastic celestial double feature!",
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
                      Navigator.pop(context),
                    },
                  )),
              // Positioned(
              //     bottom: 5,
              //     child: Column(
              //       children: [
              //         Container(
              //           width: MediaQuery.of(context).size.width,
              //           margin: EdgeInsets.only(left: 8, right: 8, top: 10),
              //           child: Center(
              //             child: Text(
              //               "“You are free; you are free to go to your temples. You are free to go to your mosques or to any other places of worship in this State of Pakistan.“",
              //               style: TextStyle(
              //                   fontSize: 12,
              //                   fontFamily: "BubblegumSans",
              //                   letterSpacing: 2,
              //                   color: Colors.black),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           width: MediaQuery.of(context).size.width,

              //           // height: MediaQuery.of(context).size.height / 5,
              //           margin: EdgeInsets.only(top: 3),
              //           child: Center(
              //             child: Text(
              //               "―Muhammad Ali Jinnah",
              //               style: TextStyle(
              //                   fontSize: 15,
              //                   fontFamily: "BubblegumSans",
              //                   letterSpacing: 2,
              //                   color: Colors.green),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ))
            ]),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
