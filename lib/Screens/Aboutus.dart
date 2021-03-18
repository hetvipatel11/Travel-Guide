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
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        BoldText("Hotel", 20.0, kblack),
        Icon(Icons.more_horiz,size: 20.0,color: kblack,)
      ],
    );
    NormalText(" ",kgreyDark,16);
    NormalText("07,Mar at 15:30 pm",kdarkBlue,12);
  }
}