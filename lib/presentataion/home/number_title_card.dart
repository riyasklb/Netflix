import 'package:flutter/cupertino.dart';

import '../widgets/maintitle.dart';
import 'number_card.dart';

class numbertitlecard extends StatelessWidget {
  const numbertitlecard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        maintitle(
          title: 'Top 10 Tv Shows In India Today',
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => numbercard(
                index: index,
              ),
            ),
          ),
        )
      ],
    );
  }
}
