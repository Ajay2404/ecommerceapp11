import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../common/theme/app_css.dart';
import 'collectionProduct.dart';

class CollectionView extends StatelessWidget {//listpage of collection
  var collection;

  CollectionView({Key? key, this.collection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          collection["image"],
        ).paddingAll(10).inkWell(
          onTap: () {

            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return CollectionProduct(collection);
              },
            ));
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              collection["title"],
              style: AppCss.tenorSansRegular18,
            ),
          ],
        ),
      ],
    );
  }
}
