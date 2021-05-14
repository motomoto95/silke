import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_1/Screens/Login/components/background.dart';
import 'package:test_app_1/components/already_have_an_account_check.dart';
import 'package:test_app_1/components/rounded_button.dart';
import 'package:test_app_1/components/rounded_input_field.dart';
import 'package:test_app_1/components/rounded_password_field.dart';
//import 'package:test_app_1/components/text_field_container.dart';
//import 'package:test_app_1/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    //@required this.size,
  }) : super(key: key);

  //final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "./LOGUEATE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.06),
          SvgPicture.asset(
            "assets/icons/ls2.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.06),
          RoundedInputField(
            hintText: "Ingresa tu nombre de usuario",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.06),
          RoundedButton(
            text: "L O G I N",
            press: () {},
          ),
          SizedBox(height: size.height * 0.07),
          AlreadyHaveAnAccountCheck(
            press: () {},
          ),
        ],
      ),
    );
  }
}
