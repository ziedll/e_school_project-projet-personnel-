import 'package:e_school_project/constants.dart';
import 'package:e_school_project/screens/Menu_du_jour_screen//Data/DailyMenu_Data.dart';
import 'package:flutter/material.dart';

class DailyMenuScreen extends StatelessWidget {
  const DailyMenuScreen({Key? key}) : super(key: key);
  static const String routeName = 'DailyMenuScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu\n du jour'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding),
                      topRight: Radius.circular(kDefaultPadding),
                    )),
                child: ListView.builder(
                    itemCount: dateSheet.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: kDefaultPadding,
                              width: kDefaultPadding,
                              child: Divider(
                                thickness: 1.0,
                              ),
                            ),
                            //first need a row, then 3 collumns
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //list column
                                Column(
                                  children: [
                                    Text(
                                      dateSheet[index].mealName,
                                      style: TextStyle(
                                          color: kTextBlackColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      dateSheet[index].dayName.toString(),
                                      style: TextStyle(
                                          color: kTextBlackColor,
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),

                                //2nd one

                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ))
        ],
      ),
    );
  }
}
