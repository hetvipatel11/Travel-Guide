import 'package:flutter/material.dart';
import 'package:Travel_guide/utils/RecommendationImage.dart';
import 'package:Travel_guide/utils/TextStyles.dart';
import 'package:Travel_guide/utils/consts.dart';

import 'OverViewScreen.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("Accomodation", 25, kblack),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        width: 330,
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            buildContainer(),
            SizedBox(
              width: 20,
            ),
            buildContainer(),
            SizedBox(
              width: 20,
            ),
            buildContainer(),

            buildContainer(),
            SizedBox(
              width: 20,
            ),
            buildContainer(),
            SizedBox(
              width: 20,
            ),
            buildContainer(),
          ],
        ),
      ),
    );
  }

  Widget buildContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return OverViewPage();
        }));
      },
      child: Container(
        width: 320,
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              child: ClipRRect(
                  borderRadius: new BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  child: Image.asset(
                    "assets/hotel.jpg",
                    fit: BoxFit.fitHeight,
                  )),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                BoldText("Emperor resort", 20.5, kblack),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    BoldText("5 Stars", 15.0, korangelite),
                    Icon(
                      Icons.location_on,
                      color: kgreyDark,
                      size: 15.0,
                    ),
                    NormalText("Goa", kgreyDark, 15.0)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: korange,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: kwhite,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(height: 14),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: 90,
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 15.0,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

