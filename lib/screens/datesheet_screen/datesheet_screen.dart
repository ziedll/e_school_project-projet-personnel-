import 'package:e_school_project/constants.dart';
import 'package:e_school_project/screens/datesheet_screen/data/datesheet_data.dart';
import 'package:flutter/material.dart';

class DateSheetScreen extends StatelessWidget {
  const DateSheetScreen({Key? key}) : super(key: key);
  static const String routeName = 'DateSheetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emploi \n du temps'),
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
                    height: MediaQuery.of(context).size.height / 8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: kDefaultPadding,
                          width: kDefaultPadding,
                          child: Divider(
                            thickness: 10.0,
                          ),
                        ),
                        //first need a row, then 3 collumns
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //list column
                            Column(
                              children: [
                                Text(
                                  dateSheet[index].subjectName,
                                  style: TextStyle(
                                      color: kTextBlackColor,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  dateSheet[index].dayName.toString(),
                                  style: TextStyle(
                                      color: kTextBlackColor,
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),

                            //2nd one
                            Column(
                              children: [
                                Text(dateSheet[index].subjectName,
                                    style: TextStyle(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                                ),
                                Text(
                                  dateSheet[index].time,
                                  style: TextStyle(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0),
                                ),
                              ],
                            ),
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
