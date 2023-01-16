import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/core/constands.dart';
import 'package:project2/presentataion/search/widgets/title.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg";

class searchresultwidget extends StatelessWidget {
  const searchresultwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtexttitle(title: 'Movies &Tv'),
        kheight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.4,
          children: List.generate(
            20,
            (index) {
              return maincard();
            },
          ),
        ))
      ],
    );
  }
}

class maincard extends StatelessWidget {
  const maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageurl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
