import 'package:flutter/material.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import '../Quiz/lib/widgets/provinceSmallDetailsCard.dart';

class CitiesListScreen extends StatelessWidget {
  const CitiesListScreen({Key? key}) : super(key: key);

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
                        "Why Do Eclipses Play Hide and Seek with ",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "BubblegumSans",
                            letterSpacing: 3,
                            color: Colors.green),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30, top: 5),
                      child: Text(
                        "Earths Inhabitants",
                        style: TextStyle(
                            fontSize: 23,
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
                        "assets/eclipse2017.gif",
                        "Hide and Seek!",
                        Colors.teal,
                        Colors.cyan,

                        // Colors.green,
                        // Colors.tealAccent,
                        "Imagine Earth is a big playground, and the Sun is like a super bright flashlight. When the Moon comes between Earth and the Sun, it creates a shadow that falls on a small part of the playground. Only the kids standing in that shadow can see the eclipse, like a special show. But for the other kids on the playground, the Sun is still too bright, so they can't see it. It's like having a secret show that only some lucky kids get to watch while the rest just see the regular sunny day.",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/shadowP.webp",
                        // "assets/c7.png",
                        "The Shadow's Path",
                        Colors.green,
                        Colors.cyan,
                        "When the Moon moves in front of the Sun, it makes a shadow on Earth. But this shadow is not very big. Only the people who are in the right place on Earth, where the shadow falls, can see the eclipse. It's like a special club for eclipse watchers!",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/earthPlayground.webp",
                        "Earth's Big Playground",
                        Colors.deepPurple,
                        Colors.cyan,
                        "Imagine Earth is like a giant playground, and the Sun is a bright flashlight. When the Moon gets in between Earth and the Sun, it creates a dark spot on the playground. Only the people standing in that dark spot can see the eclipse. It's like having a secret show just for them!",
                      ),
                      ProvinceSmallDetailsCard(
                        "assets/eclipse2017.gif",
                        "Eclipse Chasers",
                        // Colors.teal,
                        // Colors.cyan,
                        Color.fromARGB(255, 0, 78, 3),
                        Colors.teal,
                        "Eclipses are like hidden treasures in the sky. They don't happen everywhere at the same time. So, some people become eclipse chasers and travel to places where the eclipse is going to happen. It's like going on a magical adventure to see something amazing in the sky!",
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
              Positioned(
                  bottom: 10,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          left: 8,
                          right: 10,
                        ),
                      )
                    ],
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
