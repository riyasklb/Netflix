import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/core/colors/colors.dart';
import 'package:project2/core/constands.dart';

import 'custom_button_widget.dart';

class backgroundcard extends StatelessWidget {
  const backgroundcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(kmainimage))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custombutton(
                  title: 'My List',
                  icon: Icons.add,
                ),
                _playbutton(),
                custombutton(
                  title: 'Info',
                  icon: Icons.info,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

TextButton _playbutton() {
  return TextButton.icon(
    onPressed: () {},
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhitecolor)),
    icon: const Icon(
      Icons.play_arrow,
      size: 25,
      color: kblackcolor,
    ),
    label: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'Play',
        style: TextStyle(color: kblackcolor, fontSize: 20),
      ),
    ),
  );
}
