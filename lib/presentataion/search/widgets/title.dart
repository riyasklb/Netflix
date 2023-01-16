import 'package:flutter/cupertino.dart';

class searchtexttitle extends StatelessWidget {
  final String title;
  searchtexttitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
