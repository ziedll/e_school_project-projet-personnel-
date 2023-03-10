import 'package:e_school_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/student_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //we will divide the screen into two parts
        //fixed height for first half
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StudentName(
                        studentName: 'Zied',
                      ),
                      kHalfWidthSizedBox,
                      StudentClass(studentClass: '5.1'),
                      kHalfWidthSizedBox,
                      StudentYear(studentYear: '2022-2023'),
                      kHalfSizedBox,
                      StudentPicture(
                          picAddress:
                              'assets/images/avatar-removebg-preview.png',
                          onPress: () {}),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        //other will use all the remaining height of screen
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    kDefaultPadding * 3,
                  ),
                  topRight: Radius.circular(
                    kDefaultPadding * 3,
                  ),
                ),
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                        onPress: () {},
                        icon: 'assets/icons/chat.svg',
                        title: 'chat',
                      ),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/homework.svg',
                          title: 'devoirs'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon:
                              'assets/icons/ib-world-school-logo-1-colour_adobe_express.svg',
                          title: 'service action'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/schedule-svgrepo-com.svg',
                          title: 'emploi '
                              '\ndu temps'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/results.svg',
                          title: 'r??sultats'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/exam.svg',
                          title: '??valuations'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/1353249.svg',
                          title: 'annonces'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/event.svg',
                          title: '??v??nements\n?? venir'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/155491.svg',
                          title: 'quitter\n l\'application'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/logout.svg',
                          title: 'se d??connecter'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 50.0,
              width: 50.0,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            )
          ],
        ),
      ),
    );
  }
}
