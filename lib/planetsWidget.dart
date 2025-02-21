

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PlanetWidget extends StatelessWidget {
 String planetName;
 String planetImage;
   PlanetWidget({required this.planetName,required this.planetImage});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Expanded(flex: 10,
            child: Image.asset(planetImage,)),
        Expanded(
          child: Text(planetName,style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white),),
        )
      ],
    );
  }
}
