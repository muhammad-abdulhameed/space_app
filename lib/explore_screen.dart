

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space_app/exploreBtn.dart';
import 'package:space_app/planetDetails_Screen.dart';
import 'package:space_app/planetsData.dart';
import 'package:space_app/planetsWidget.dart';

class ExploreScreen extends StatefulWidget {
  static String routeName = "ExploreScreen";


  ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  CarouselSliderController carouselSliderController=CarouselSliderController();
  int exploreIndex=0;
 String planetNameFromSlider="";
  List<PlanetsData> planetsSlider = [
    PlanetsData(planetName: "Sun", palanetImage: 'assets/images/sun.png',
        about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies."
        ,title:"The Sun: Our Solar System's Star"
        ,distance:"0"
        ,gravity:"274"
        ,lenth:"0"
        ,mass:"1.989 × 10³⁰"
        ,orbit:"0"
        ,raduis:"695700"
        ,surfaceArea:"6.09 × 10¹²"
    ),
    PlanetsData(planetName: "Mercury", palanetImage: 'assets/images/mercury.png'
       , about:"The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies. "
        ,title:"Mercury: The Closest Planet"
        ,distance:"57909227"
        ,gravity:"3.7"
        ,lenth:"1407.6"
        ,mass:"3.301 × 10²³"
        ,orbit:"0.24"
        ,raduis:"2439.7"
        ,surfaceArea:"7.48 × 10⁷"
    ),
    PlanetsData(planetName: "Venus", palanetImage: 'assets/images/venus.png'
        ,about:"Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance."
        ,title:"Venus: Earth's Toxic Twin"
        ,distance:"108209072"
        ,gravity:"8.87"
        ,lenth:"5832.2"
        ,mass:"4.867 × 10²⁴"
        ,orbit:"0.62"
        ,raduis:"6051.8"
        ,surfaceArea:"4.60 × 10⁸"
    ),
    PlanetsData(planetName: "Earth", palanetImage: 'assets/images/earth.png'
        ,about:"Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns."
        ,title:"Earth: Our Blue Marble"
        ,distance:"149598026"
        ,lenth:"23.93"
        ,orbit:"1"
        ,gravity:"9.81"
        ,raduis:"6371"
        ,mass:"5.972 × 10²⁴"
        ,surfaceArea: "5.10 × 10⁸"),
    PlanetsData(planetName: "Mars", palanetImage: 'assets/images/mars.png'
        ,about:"Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface."
        ,title:"Mars: The Red Planet"
        ,distance:"227943824"
        ,gravity:"3.71"
        ,lenth:"24.62"
        ,mass:"6.39 × 10²³"
        ,orbit:"1.88"
        ,raduis:"3389.5"
        ,surfaceArea:"1.45 × 10⁸"
    ),
    PlanetsData(planetName: "Jupiter", palanetImage: 'assets/images/jupiter.png'
        ,about:"Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life."
        ,title:"Jupiter: The Gas Giant"
        ,distance:"778547669"
        ,gravity:"24.79"
        ,lenth:"9.92"
        ,mass:"1.898 × 10²⁷"
        ,orbit:"11.86"
        ,raduis:"69911"
        ,surfaceArea:"6.21 × 10¹⁵"
    ),
    PlanetsData(planetName: "Saturn", palanetImage: 'assets/images/saturn.png'
        ,about:"Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers."
        ,title:"Saturn: The Ringed Planet"
        ,distance:"1426666422"
        ,gravity:"10.44"
        ,lenth:"10.66"
        ,mass:"5.683 × 10²⁶"
        ,orbit:"29.46"
        ,raduis:"58232"
        ,surfaceArea:"4.27 × 10¹⁵"
    ),
    PlanetsData(planetName: "Uranus", palanetImage: 'assets/images/uranus.png'
        ,about:"Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color."
        ,title:"Uranus: The Tilted Planet"
        ,distance:"2870990000"
        ,gravity:"8.69"
        ,lenth:"17.24"
        ,mass:"8.681 × 10²⁵"
        ,orbit:"84.01"
        ,raduis:"25362"
        ,surfaceArea:"8.69"
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 22),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/Rectangle 4.png",
                ),
                alignment: Alignment.topCenter)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 100,
              centerTitle: true,
              title: const Text(
                "Explore",
              ),
              titleTextStyle: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w700,),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: Column(
                children: [
            Expanded(flex: 0,
              child: Container(margin: EdgeInsets.only(left: 20, top: 30,bottom: 24),
              child: const Text("Which planet\nwould you like to explore?"
                , style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
              ),
            ),
                  Expanded(
                    flex: 4,
                    child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(style: const ButtonStyle(shape:MaterialStatePropertyAll(CircleBorder(eccentricity: 0))
                            ,backgroundColor: MaterialStatePropertyAll(Color(0xFFEE403D))),
                            onPressed: (){
                              setState(() {
                                carouselSliderController.previousPage();
                              });
                            },
                            child:Icon(Icons.arrow_back) ),
                        Expanded(
                          child: CarouselSlider.builder(
                            carouselController: carouselSliderController,
                              itemCount: planetsSlider.length,
                              itemBuilder: (context, index, realIndex) =>
                              InkWell(
                                child: PlanetWidget(
                                    planetName: planetsSlider[index].planetName,
                                    planetImage: planetsSlider[index].palanetImage),
                                    onTap: (){
                                  Navigator.of(context).pushNamed(PlanetDetailsScreen.routeName,
                                      arguments: PlanetsData(
                                          planetName:planetsSlider[index].planetName,
                                          palanetImage: planetsSlider[index].palanetImage,
                                        title: planetsSlider[index].title,
                                        about: planetsSlider[index].about,
                                        distance: planetsSlider[index].distance,
                                        lenth: planetsSlider[index].lenth,
                                        orbit: planetsSlider[index].orbit,
                                        raduis: planetsSlider[index].raduis,
                                        mass: planetsSlider[index].mass,
                                        gravity: planetsSlider[index].gravity,
                                        surfaceArea: planetsSlider[index].surfaceArea,


                                      )
                                  );
                                    },
                              ) ,
                              options: CarouselOptions(
                                  initialPage:0 ,
                                aspectRatio: 0.1,
                                viewportFraction: 1,
                                onPageChanged: (index, reason) { setState(() {
                                  planetNameFromSlider=planetsSlider[index].planetName;
                                   exploreIndex=index;
                                });},

                              ))
                        ),
                        ElevatedButton(
                            style: ButtonStyle(shape:MaterialStatePropertyAll(CircleBorder(eccentricity: 0))
                                ,backgroundColor: MaterialStatePropertyAll(Color(0xFFEE403D))),
                            onPressed: (){
                             setState(() {
                               carouselSliderController.nextPage();

                             });
                            },
                            child:Icon(Icons.arrow_forward) )
                      ],
                    ),
                  ),
                  Expanded(flex:0,child: ExploreBtn(
                      onExploreBtnClicked: (){
                        Navigator.of(context).pushNamed(PlanetDetailsScreen.routeName,
                            arguments: PlanetsData(
                              planetName:planetsSlider[exploreIndex].planetName,
                              palanetImage: planetsSlider[exploreIndex].palanetImage,
                              title: planetsSlider[exploreIndex].title,
                              about: planetsSlider[exploreIndex].about,
                              distance: planetsSlider[exploreIndex].distance,
                              lenth: planetsSlider[exploreIndex].lenth,
                              orbit: planetsSlider[exploreIndex].orbit,
                              raduis: planetsSlider[exploreIndex].raduis,
                              mass: planetsSlider[exploreIndex].mass,
                              gravity: planetsSlider[exploreIndex].gravity,
                              surfaceArea: planetsSlider[exploreIndex].surfaceArea,


                            )
                        );
                      },planetName:planetNameFromSlider.isEmpty?"Sun":planetNameFromSlider))

    ],
    )
    ,
    )
    ,
    );
  }
}



/*backgroundColor: Color(0x0E0E0E),
        body: Column(
            children: [
          Stack(children: [
            Image.asset("assets/images/Rectangle 4.png"),
            Text("Explore",style: TextStyle(fontSize: 24,),),
          ],)
        ]),*/

/*CarouselSlider.builder(

      itemCount: planetsSlider.length,
      itemBuilder:
          (BuildContext context, int index, int realIndex) =>
          Column(
            children: [
              Image.asset()
            ],
          ),
      options: null,

    )
    )*/
/*CarouselSlider(carouselController:carouselSliderController ,
                              items:
                              planetsSlider.map((planetData) =>
                                  PlanetWidget( planetImage: planetData.palanetImage,planetName: planetData.planetName,) ).toList(),
                              options: CarouselOptions(
                                  aspectRatio: double.minPositive,
                                viewportFraction: 1,
                                initialPage: 0,
                                onPageChanged: (index, _) {
                                    setState(() {
                                      planetNameFromSlider= planetsSlider[index].planetName;
                                    });


                                },

                              ))*/