
typedef onplanetClicked=Function(String,int);
class PlanetsData{

  String planetName;
  String palanetImage;
 late String about;
 late String title;
 late String distance;
 late String lenth;
 late String orbit;
 late String raduis;
 late String mass;
 late String gravity;
 late String surfaceArea;
  PlanetsData({
     required this.planetName,
     required this.palanetImage,
     this.about="",
     this.title="",
     this.distance="",
     this.lenth="",
     this.orbit="",
     this.raduis="",
     this.mass="",
     this.gravity="",
     this.surfaceArea=""
  });
  PlanetsData.withDetails(
      {required this.planetName,
        required this.palanetImage,
        required this.about,
        required this.distance,
        required this.lenth,
        required this.orbit,
        required this.raduis,
        required this.mass,
        required this.gravity,
        required this.surfaceArea});

}