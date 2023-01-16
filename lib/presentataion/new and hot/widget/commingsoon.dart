import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/core/constands.dart';
import 'package:project2/presentataion/widgets/videp_widget.dart';

import '../../../core/colors/colors.dart';
import '../../home/custom_button_widget.dart';

class commingsoonwidget extends StatelessWidget {
  const commingsoonwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          child: Column(
            children: [
              Text(
                'FEB',
                style: TextStyle(fontSize: 16, color: kgrey),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              )
            ],
          ),
          width: 50,
          height: 450,
        ),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const videowidgets(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'VIKRAM',
                    style: TextStyle(
                      letterSpacing: -.1,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      custombutton(
                        title: 'Remind me',
                        textsize: 12,
                        icon: Icons.subscriptions,
                        iconsize: 20,
                      ),
                      kwidth,
                      custombutton(
                        title: 'Info',
                        textsize: 12,
                        icon: Icons.info,
                        iconsize: 20,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              const Text('Comming on Friday '),
              kheight,
              Text(
                'Vikram',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kheight,
              Text(
                'Vikram is a 2022 Indian Tamil-language action thriller film directed by Lokesh Kanagaraj, who co-wrote the script with Rathna Kumar. It is produced by Kamal Haasan who stars in the title .',
                style: TextStyle(color: kgrey),
              )
            ],
          ),
          width: size.width - 50,
          height: 450,
        ),
      ],
    );
  }
}
