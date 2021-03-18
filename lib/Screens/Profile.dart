import 'package:flutter/material.dart';
import 'package:Travel_guide/utils/TextStyles.dart';
import 'package:Travel_guide/utils/consts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("Profile", 25, kblack),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: kgreyDark,
                    radius: 50,
                    child: Icon(Icons.person,size: 50,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      BoldText("hetvipatel",20.0,kblack),
                      Row(
                        children: <Widget>[
                          NormalText("hetvipatel@gmail.com",kgreyDark,16),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 2,
              color: kgreyFill,
            ),
            ListTile(leading: Icon(Icons.favorite, color: kdarkBlue,size: 40,),
                title: Text("Favourite"),
                onTap: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fav(),));}),
            ListTile(leading: Icon(Icons.info, color: kdarkBlue,size: 40,),
                title: Text("About Us"),
                onTap: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => abtUS(),));}),
            ProfileItem(Icons.exit_to_app,"Sign Out"),


          ],
        ),
      ),
    );
  }

  Widget ProfileItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,bottom: 9),
      child: Row(
        children: <Widget>[
          Icon(icon, color: kdarkBlue,size: 40,),
          SizedBox(width: 8,),
          NormalText(text,kblack,20.0)
        ],
      ),
    );
  }
}
class fav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("MY Favourites", 25, kblack),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }

}
class abtUS extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("About Us", 25, kblack),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: NormalText(" Travel is the movement of people between distant geographical locations whereas a guide means a person who shows the way to others, and together Travel Guide meaning to travel through, or reach a destination in, an unfamiliar area, as by accompanying or giving directions to the person.Travel Guide is like a travel guide book but in the form of an application, that provides travellers or tourists with information about places of interest, accommodation, restaurants, etc", kblack, 15.0),
      ),
    );

  }

}
