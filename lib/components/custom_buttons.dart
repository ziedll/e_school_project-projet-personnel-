import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton({Key? key,required this.onPress, required this.title, required this.iconData});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          margin: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding
          ),
          padding: EdgeInsets.only(right: kDefaultPadding),
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kSecondaryColor, kPrimaryColor],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
              borderRadius: BorderRadius.circular(kDefaultPadding)
          ),
          child: Align(
            alignment: Alignment.center,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),),
                Spacer(),
                Icon(iconData,
                  size: 40.0,
                  color: kOtherColor,),
              ]
          )
          )
      ),
    );
  }
}


