import 'package:flutter/cupertino.dart';

import '../../core/colors/colors.dart';

class custombutton extends StatelessWidget {
  const custombutton(
      {this.iconsize = 30,
      this.textsize = 18,
      required this.title,
      required this.icon,
      Key? key})
      : super(key: key);
  final IconData icon;
  final String title;
  final double iconsize;
  final double textsize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhitecolor,
          size: iconsize,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: textsize,
            color: kwhitecolor,
          ),
        )
      ],
    );
  }
}
