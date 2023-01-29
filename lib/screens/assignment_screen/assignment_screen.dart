import 'package:e_school_project/constants.dart';
import 'package:e_school_project/screens/assignment_screen/Data/assignment_data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'widgets/assignment_widgets.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({Key? key}) : super(key: key);
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devoirs'),
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
                  ),
                ),
                child: ListView.builder(
                    padding: EdgeInsets.all(kDefaultPadding),
                    itemCount: assignment.length,
                    itemBuilder: (context, int index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: kDefaultPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              //padding: EdgeInsets.all(kDefaultPadding),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kDefaultPadding),
                                color: kOtherColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: kTextLightColor,
                                    blurRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      color: kSecondaryColor.withOpacity(0.4),
                                      borderRadius:
                                          BorderRadius.circular(kDefaultPadding),
                                    ),
                                    child: Center(
                                      child: Text(
                                        assignment[index].subjectName,
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                          color: kPrimaryColor,
                                        )
                                     ),
                                    ),
                                  ),
                                  kHalfSizedBox,
                                  Text(
                                    assignment[index].topicName,
                                    style: TextStyle(
                                      color: kTextBlackColor,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  kHalfSizedBox,
                                  AssignmentDetailRow(
                                    title: 'Date attribuée',
                                    statusValue: assignment[index].assignDate, onPress: () {  },
                                  ),
                                  kHalfSizedBox,
                                  AssignmentDetailRow(
                                    title: 'Date de remise',
                                    statusValue: assignment[index].lastDate, onPress: () {  },
                                  ),
                                  kHalfSizedBox,
                                  AssignmentDetailRow(
                                    title: 'Statut',
                                    statusValue: assignment[index].status, onPress: () {  },
                                  ),
                                  kHalfSizedBox,

                                  //use condition here to display button
                                  if (assignment[index].status == 'En attente')
                                    //then show button
                                    AssignmentButton(
                                      onPress: () {
                                        //submit here
                                      },
                                      title: 'à rendre',
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),

            ),
          ),
        ],
      ),
    );
  }
}

