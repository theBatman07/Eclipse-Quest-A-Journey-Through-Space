import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/provinceModel.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import '../Quiz/lib/widgets/provinceSmallDetailsCard.dart';

class ProvincesListScreen extends StatefulWidget {
  const ProvincesListScreen({Key? key}) : super(key: key);

  @override
  State<ProvincesListScreen> createState() => _ProvincesListScreenState();
}

class _ProvincesListScreenState extends State<ProvincesListScreen> {
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
                    Container(
                      // height: MediaQuery.of(context).size.height / 5,
                      child: Text(
                        "Solving the Mystery of",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "BubblegumSans",
                            letterSpacing: 2,
                            color: Colors.green),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30, top: 5),
                      child: Text(
                        "Eclipse",
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
                        "assets/elipseHappen.gif",
                        "Elipse",
                        Color.fromARGB(255, 253, 61, 47),
                        Colors.pinkAccent,
                        "A solar eclipse is like the Sun taking a quick nap. It happens when the Moon moves in front of the Sun, blocking some or all of its light. For a little while, it gets dark during the day, and you can see the Sun's shape change. But never look directly at it—it's too bright!",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/explanation.webp",
                        "Explanation",
                        Colors.deepPurple,
                        Colors.cyan,
                        "An eclipse occurs when celestial bodies align in such a way that one partially or completely blocks the view of another. In a solar eclipse, the Moon moves between the Earth and the Sun, casting a shadow on Earth. This briefly darkens the day and creates a mesmerizing \"ring of fire\" or total darkness. In a lunar eclipse, Earth passes between the Sun and the Moon, causing the Moon to enter Earth's shadow, giving it a reddish tint. Eclipses are fascinating celestial events, shedding light on the dynamic interactions of our solar system's components. Scientists predict them based on celestial mechanics.",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/typesOfEclipse.webp",
                        "Types of Eclipse",
                        // Colors.teal,
                        // Colors.cyan,
                        Color.fromARGB(255, 0, 78, 3),
                        Colors.teal,
                        "Solar Eclipse \n  -Total Solar Eclipse\n  -Partial Solar Eclipse\n  -Annular Solar Eclipse\n\nLunar Eclipse\n  -Total Lunar Eclipse\n  -Partial Lunar Eclipse",
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
