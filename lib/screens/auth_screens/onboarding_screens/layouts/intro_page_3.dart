import 'package:flutter/material.dart';

import '../../../../common/config.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageAssets.p4),
        Center(child: Text(fonts.allType)),
        Center(
            child: Text(
                fonts.publishUp)),
      ],
    );
  }
}
