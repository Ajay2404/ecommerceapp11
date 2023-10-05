import 'package:flutter/material.dart';

import '../../../../common/config.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageAssets.p3),
        Center(child: Text(fonts.takeAdvantage)),
        Center(
            child: Text(
                fonts.publishUp)),
      ],
    );
  }
}
