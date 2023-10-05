import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/common/app_array.dart';
import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:ecommerceapp/widgets/common_Bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'collectionLike.dart';

class CollectionProduct extends StatelessWidget {
  var collection;

  CollectionProduct(
    this.collection, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBarCommon(
            color: appCtrl.appTheme.blackColor,
            svgColor: appCtrl.appTheme.white),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 560,
                  width: 390,
                  child: Image.asset(
                    collection["image"],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SvgPicture.asset(svgAssets.inn3),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: appArray.collectionLike.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 16 / 9,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 1,
                    crossAxisCount: 2,
                    mainAxisExtent: 300),
                itemBuilder: (context, index) {
                  return CollectionLike(
                    collectionlike: appArray.collectionLike[index],
                  );
                },
              ),
              const VSpace(Sizes.s40),
              Center(
                child: Text(
                  fonts.yMal,
                  style: AppCss.tenorSansRegular18
                      .textColor(const Color(0xfffcfcfc)),
                ),
              ),
              const VSpace(Sizes.s6),
              Center(
                  child: SvgPicture.asset(
                svgAssets.inn3,
                color: const Color(0xfffcfcfc),
              )),
              const VSpace(Sizes.s28),
              CarouselSlider(
                items: List.generate(
                  AppArray().collection.length,
                  (index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          AppArray().collection[index]['image'],
                          fit: BoxFit.fill,
                          height: 350,
                          width: 280,
                        ),
                      ),
                      Text(
                        AppArray().collection[index]['title'],
                        style: AppCss.tenorSans.textColor(Colors.white),
                      ),
                    ],
                  ),
                ),
                options: CarouselOptions(
                  height: 480,
                  viewportFraction: 0.7,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                ),
              ),
              const CommonBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
