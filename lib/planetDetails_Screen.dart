import 'package:flutter/material.dart';

import 'package:space_app/planetsData.dart';

class PlanetDetailsScreen extends StatefulWidget {
  static String routeName="PlanetDetailsScreen";

   PlanetDetailsScreen({super.key});

  @override
  State<PlanetDetailsScreen> createState() => _PlanetDetailsScreenState();
}

class _PlanetDetailsScreenState extends State<PlanetDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    PlanetsData args =ModalRoute.of(context)?.settings.arguments as PlanetsData;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 22),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
    "assets/images/Rectangle 4.png",
    ),
    alignment: Alignment.topCenter)),
    child:Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 50,
          title: Text(args.planetName,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.white),),
              centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: ElevatedButton(style: const ButtonStyle(shape:MaterialStatePropertyAll(CircleBorder(eccentricity: 0))
            ,backgroundColor: MaterialStatePropertyAll(Color(0xFFEE403D))),
            onPressed: (){
              setState(() {
                Navigator.of(context).pop();
              });
            },
            child:Icon(Icons.arrow_back) ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,)
          ,Expanded(flex: 3,
            child: Text("${args.title}"
                ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.white)),
          ),
          Expanded(flex: 7,
              child: Align(alignment: Alignment.center, child: Image.asset(args.palanetImage,))),
          Expanded(flex: 0,
            child: Text("About"
                ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.white)
            ),
          ),
          SizedBox(height: 8,),
          Expanded(flex: 0,
              child: Text(args.about,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.white))),
          SizedBox(height: 10,),
          Text("Distance from Sun (km) :${args.distance}"
              ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white)
          ),
          Expanded(flex: 0,
            child: Text("Length of Day (hours) :${args.lenth}"
                ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white)
            ),
          ),
          Expanded(flex: 0,
            child: Text("Orbital Period (Earth years) :${args.orbit}"
                ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white)
            ),
          ),
          Expanded(flex: 0,
            child: Text("Radius (km) :${args.raduis}"
                ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white)
            ),
          ),
          Expanded(flex: 0,
            child: Text("Mass (kg) ${args.mass}"
                ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white)),
          ),
          Expanded(flex: 0,
            child: Text("Gravity (m/s²) :${args.gravity}"
                ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white)),
          ),
          Expanded(flex: 0,
            child: Text("Surface Area (km²) ${args.surfaceArea}"
                ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white)),
          ),

        ],
      ),


    )
    );
  }
}
