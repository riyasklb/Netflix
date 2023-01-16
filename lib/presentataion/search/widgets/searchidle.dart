import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/core/colors/colors.dart';
import 'package:project2/core/constands.dart';
import 'package:project2/presentataion/search/widgets/title.dart';

final imageurl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/c1bz69r0v065TGFA5nqBiKzPDys.jpg";

class searchidlewidget extends StatelessWidget {
  const searchidlewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtexttitle(title: "Top Searches"),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => topsearchtitle(),
              separatorBuilder: (ctx, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class topsearchtitle extends StatelessWidget {
  const topsearchtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
              color: kwhitecolor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 27,
          child: CircleAvatar(
            backgroundColor: kblackcolor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhitecolor,
            ),
          ),
        )
      ],
    );
  }
}
