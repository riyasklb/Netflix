import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/core/colors/colors.dart';

import '../../core/constands.dart';

class numbercard extends StatelessWidget {
  const numbercard({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kradius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7WUHnWGx5OO145IRxPDUkQSh4C7.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: -10,
          bottom: -30,
          child: BorderedText(
            strokeColor: kwhitecolor,
            strokeWidth: 10.0,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                  fontSize: 150,
                  color: kblackcolor,
                  fontWeight: FontWeight.bold,
                  decorationColor: Colors.black,
                  decoration: TextDecoration.none),
            ),
          ),
        )
      ],
    );
  }
}
