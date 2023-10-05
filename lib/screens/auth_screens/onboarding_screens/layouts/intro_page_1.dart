import 'package:flutter/material.dart';

import '../../../../common/config.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageAssets.p1),
        Center(child: Text(fonts.discount)),
        Center(
            child: Text(
                fonts.publishUp)),
      ],
    );
  }
}
