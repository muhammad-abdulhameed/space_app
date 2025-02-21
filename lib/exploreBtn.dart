import 'package:flutter/material.dart';



class ExploreBtn extends StatelessWidget {
  Function onExploreBtnClicked;
  String planetName;
   ExploreBtn({this.planetName="",required this.onExploreBtnClicked} );

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(horizontal: 17,vertical: 22),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xFFEE403D)),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29)
                  )
              )
          ),
          onPressed: () {
            onExploreBtnClicked();
          },
          child: Row(
            children: [
              Expanded(flex: 8,
                  child: Container(margin: EdgeInsets.symmetric(vertical: 18,horizontal: 26),
                      child: Text("Explore $planetName",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),))
              ),

              Expanded(child: Icon(Icons.arrow_forward_outlined,size: 26,))
            ],
          ) ),
    );
  }
}
