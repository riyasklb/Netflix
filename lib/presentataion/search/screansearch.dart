import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/core/colors/colors.dart';
import 'package:project2/core/constands.dart';
import 'package:project2/presentataion/search/widgets/searchidle.dart';
import 'package:project2/presentataion/search/widgets/searchresultwidget.dart';

class screensearch extends StatelessWidget {
  const screensearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: TextStyle(color: kwhitecolor),
            ),
            kheight,
            // Expanded(child: const searchidlewidget()),
            Expanded(child: const searchresultwidget()),
          ],
        ),
      )),
    );
  }
}
