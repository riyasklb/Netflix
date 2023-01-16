import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class videowidgets extends StatelessWidget {
  const videowidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Image.network(
            'https://images.indianexpress.com/2022/06/vikram-movie-.jpg',
            fit: BoxFit.cover,
          ),
          width: double.infinity,
          height: 200,
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.12),
            radius: 25,
            child: Icon(
              Icons.volume_off,
              color: kwhitecolor,
            ),
          ),
        ),
      ],
    );
  }
}
