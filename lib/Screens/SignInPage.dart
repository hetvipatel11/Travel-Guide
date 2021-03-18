import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Travel_guide/Screens/DashBoard.dart';
import 'package:Travel_guide/Screens/RegistrationScreen.dart';
import 'package:Travel_guide/utils/Buttons.dart';
import 'package:Travel_guide/utils/TextStyles.dart';
import 'package:Travel_guide/utils/consts.dart';
import 'package:Travel_guide/utils/forms.dart';

import 'Home.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: NormalText("SignIn", kblack, 20.0),
        backgroundColor: kwhite,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.plane,
                color: kdarkBlue,
                size: 35,
              ),
              SizedBox(height: 10),
              BoldText("TRAVEL GUIDE", 30.0, kdarkBlue),
              SizedBox(
                height: 30,
              ),
              Container(width: 340.0, child: NormalForm(Icons.email, "Email")),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 340.0,
                child: PasswordForm(),
              ),
              SizedBox(
                height: 25,
              ),
              WideButton.bold("SIGN IN", () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Home();
                }));
              }, true),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  NormalText("Don't have an account ?", kdarkBlue, 12.5),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true)
                          .push(CupertinoPageRoute<bool>(
                        fullscreenDialog: true,
                        builder: (context) => RegistrationScreen(),
                      ));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 8.0,
                      ),
                      child:
                          BoldText.veryBold("Register ?", 12.5, korange, true),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
