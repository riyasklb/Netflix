import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/core/colors/colors.dart';
import 'package:project2/presentataion/downlodas/screendownloads.dart';
import 'package:project2/presentataion/fastlaugh/screenfastlaugh.dart';
import 'package:project2/presentataion/home/screenhome%20.dart';
import 'package:project2/presentataion/mainpage/widgets/bottumnav.dart';
import 'package:project2/presentataion/new%20and%20hot/sceennewhot.dart';
import 'package:project2/presentataion/search/screansearch.dart';

class screenmainpage extends StatelessWidget {
  screenmainpage({super.key});
  final pages = [
    screenhome(),
    screenhotnew(),
    screenfastlaugh(),
    screensearch(),
    screendownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: bottumnavigationwidget(),
    );
  }
}
