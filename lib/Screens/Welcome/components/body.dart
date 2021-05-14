import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_1/Screens/Login/login_screen.dart';
import 'package:test_app_1/Screens/Welcome/components/background.dart';
import 'package:test_app_1/components/rounded_button.dart';
import 'package:test_app_1/constants.dart';
//import 'package:test_app_1/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "B I E N V E N I D O  A  [SILKE]",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              "assets/icons/space-babe.svg",
              height: size.height * 0.47,
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "ENTRAR",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "REGISTRATE",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
