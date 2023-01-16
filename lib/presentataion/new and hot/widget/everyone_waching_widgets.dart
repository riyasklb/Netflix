import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/core/constands.dart';

import '../../../core/colors/colors.dart';
import '../../home/custom_button_widget.dart';
import '../../widgets/videp_widget.dart';

class everyoncewachingwidget extends StatelessWidget {
  const everyoncewachingwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          'Vikram is a 2022 Indian Tamil-language action thrillerokesh Kanagaraj, who co-wrote the script with Rathna Kumar. It is produced by Kamal Haasan who stars in the title .',
          style: TextStyle(color: kgrey),
        ),
        kheight50,
        videowidgets(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            custombutton(
              title: 'Share',
              textsize: 16,
              icon: Icons.share,
              iconsize: 25,
            ),
            kwidth,
            custombutton(
              title: 'My List',
              textsize: 16,
              icon: Icons.add,
              iconsize: 25,
            ),
            kwidth,
            custombutton(
              title: 'Play',
              textsize: 16,
              icon: Icons.play_arrow,
              iconsize: 25,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}
