import 'package:flutter/cupertino.dart';

import '../home/screenhome .dart';
import 'maintitle.dart';

class maintitlecard extends StatelessWidget {
  const maintitlecard({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        maintitle(
          title: title,
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => maincard(),
            ),
          ),
        )
      ],
    );
  }
}
