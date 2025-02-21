import 'package:flutter/material.dart';
import 'package:space_app/exploreBtn.dart';
import 'package:space_app/explore_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color(0x0E0E0E),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(alignment: Alignment.centerLeft, children: [
                Image.asset(
                  "assets/images/Frame 1.png",
                  fit: BoxFit.contain,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    "Explore\nThe\nUniverse",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ExploreBtn(
                          onExploreBtnClicked: () {

                        Navigator.of(context).pushReplacementNamed(ExploreScreen.routeName);

                      })),

              ]),
            ),
          ],
        ),
      ),
    );
  }
}
