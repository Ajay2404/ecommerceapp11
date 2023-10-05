import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:ecommerceapp/widgets/common_Bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'layouts/collectionView.dart';

class CollectionPage extends StatefulWidget {
  //collection 1st page
  var collection;

  CollectionPage({Key? key, this.collection}) : super(key: key);

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBarCommon(
          color: appCtrl.appTheme.blackColor, svgColor: appCtrl.appTheme.white),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(svgAssets.collectSvg),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: appArray.collection.length,
                itemBuilder: (context, index) {
                  return CollectionView(
                    collection: appArray.collection[index],
                  );
                },
              ),
            ),
            CommonBottom(),
          ],
        ),
      ),
    );
  }
}
