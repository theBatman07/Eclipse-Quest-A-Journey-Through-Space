import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/HomepageScreen.dart';
import 'package:sign_in_interface/Screens/historyDetailScreen.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';
import 'package:sign_in_interface/Widgets/timelineCard.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class TimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade900,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "Upcoming Eclipse",
                                style: TextStyle(
                                    letterSpacing: 6,
                                    fontSize: 30,
                                    fontFamily: "ShinyBalloonDemo",
                                    color: Colors.white),
                              ),
                              Text(
                                "When and Where",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "ShinyBalloonDemo",
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  margin: EdgeInsets.only(top: 220, right: 5, left: 5),
                  height: MediaQuery.of(context).size.height * 4 + 500,
                  width: MediaQuery.of(context).size.width,
                  child: Timeline(
                    children: <TimelineModel>[
                      TimelineModel(
                        getTimeline(
                            "assets/aniEclipse.gif",
                            "Solar Eclipse (Annular)\n North and South America",
                            "28-29 Oct, 2023",
                            HistoryDetailScreen(
                              id: 1,
                            ),
                            Colors.teal),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.pink,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/lunarEclipse.gif",
                            "Lunar Eclipse (Partial) \nAsia, Europe",
                            "1817-1898",
                            HistoryDetailScreen(
                              id: 3,
                            ),
                            Colors.cyan),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.teal,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/lunarEclipse.gif",
                            "Lunar Eclipse",
                            "24-25 March, 2024",
                            HistoryDetailScreen(
                              id: 4,
                            ),
                            Colors.pinkAccent),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.cyan,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/aniEclipse.gif",
                            "Solar Eclipse (Total)",
                            "8 Apr, 2024",
                            HistoryDetailScreen(
                              id: 5,
                            ),
                            Colors.orange.shade900),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.pinkAccent,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/lunarEclipse.gif",
                            "Lunar Eclipse",
                            "17-18 Sep, 2024",
                            HistoryDetailScreen(
                              id: 6,
                            ),
                            Colors.indigo),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.orange.shade900,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/aniEclipse.gif",
                            "Solar Eclipse",
                            "2 Oct, 2024",
                            HistoryDetailScreen(
                              id: 7,
                            ),
                            Color.fromARGB(255, 15, 155, 20)),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.indigo,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/lunarEclipse.gif",
                            "Lunar Eclipse (Total)",
                            "13-14 March, 2024",
                            HistoryDetailScreen(
                              id: 10,
                            ),
                            Colors.deepOrangeAccent),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.green,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/aniEclipse.gif",
                            "Solar Eclipse",
                            "29th March, 2024",
                            HistoryDetailScreen(
                              id: 15,
                            ),
                            Colors.teal),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.deepOrangeAccent,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/lunarEclipse.gif",
                            "Lunar Eclipse",
                            "7-8 Sep, 2024",
                            HistoryDetailScreen(
                              id: 16,
                            ),
                            Colors.cyan),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.teal,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/aniEclipse.gif",
                            "Solar Eclipse",
                            "21 Sep, 2024",
                            HistoryDetailScreen(
                              id: 17,
                            ),
                            Colors.purple),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.cyan,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "assets/aniEclipse.gif",
                            "Solar Eclipse",
                            "17 Feb, 2024",
                            HistoryDetailScreen(
                              id: 18,
                            ),
                            Colors.orange.shade900),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.purple,
                        position: TimelineItemPosition.right,
                      ),
                    ],
                    position: TimelinePosition.Center,
                    iconSize: 40,
                    lineColor: Colors.yellow.shade900,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 50,
                left: 10,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(99, 83, 83, 83),
                      borderRadius: BorderRadius.circular(7)),
                  //  height: MediaQuery.of(context).size.height / 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                      color: Colors.white,
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomepageScreen(),
                        ),
                      ),
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
