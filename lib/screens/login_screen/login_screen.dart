import 'package:e_school_project/constants.dart';
import 'package:e_school_project/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_buttons.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validate our form now
  final _formKey = GlobalKey<FormState>();

  //changes current state
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //when user taps anywhere on the screen, keyboard hides
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: ListView(
        children: [
          //divide the body into two half
          Container(
            //use media query in order to fit all screen sizes in same manner
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/college-student-walking-flat-design-concept-vector-illustration-206013041-removebg-preview.png",
                  height: 150.0,
                  width: 150.0,
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("bienvenue !",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 35.0,
                            color: kTextWhiteColor)),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding / 6,
                ),
                Text("s\'identifier pour continuer",
                    style: Theme.of(context).textTheme.subtitle2)
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 3),
                topRight: Radius.circular(kDefaultPadding * 3),
              ),
              color: kOtherColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  sizedBox,
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          buildEmailField(),
                          sizedBox,
                          buildPasswordField(),
                          sizedBox,
                          DefaultButton(
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                //go to next activity
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                            title: "SE CONNECTER",
                            iconData: Icons.arrow_forward_outlined,
                          ),
                          sizedBox,
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Mot de passe oublié",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 15.0)),
                          )
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w900,
      ),
      decoration: InputDecoration(
        labelText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        //for validation
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return "veillez entrer votre e-mail";
          //if it does not match the pattern, Like
          //it do not contain @
        } else if (!regExp.hasMatch(value)) {
          "Veillez entrer une adresse e-mail valide";
        }
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w900,
      ),
      decoration: InputDecoration(
        labelText: "mot de passe",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return "veillez vérifier s'il y'a plus de 5 caractères";
        }
      },
    );
  }
}
