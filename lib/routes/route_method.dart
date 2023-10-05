//app file
import 'package:ecommerceapp/intro_screen/loginsignup.dart';
import 'package:ecommerceapp/screens/app_screens/home_screen/home_screen.dart';
import 'package:ecommerceapp/widgets/search_Common.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/app_screens/aboutus_screen/aboutUsPage.dart';
import '../screens/app_screens/address_screen/addressPage.dart';
import '../screens/app_screens/blog_screen/blogPage.dart';
import '../screens/app_screens/checkout_screen/checkoutDetails.dart';
import '../screens/app_screens/checkout_screen/checkout_screen.dart';
import '../screens/app_screens/checkout_screen/layouts/checkOutPg1.dart';
import '../screens/app_screens/checkout_screen/layouts/checkoutLastPage.dart';
import '../screens/app_screens/collection_screen/collectionPage.dart';
import '../screens/app_screens/collection_screen/layouts/collectionLikeView.dart';
import '../screens/app_screens/drawer_screen/menuView.dart';
import '../screens/app_screens/error_screen/errorPage.dart';
import '../screens/app_screens/filter_screen/filterPage.dart';
import '../screens/app_screens/payment_screen/paymentMethodPage.dart';
import '../screens/app_screens/search_screen/searchView.dart';
import '../screens/auth_screens/login_screen/login_screen.dart';
import '../screens/auth_screens/onboarding_screens/layouts/intro_page_1.dart';
import '../screens/auth_screens/onboarding_screens/layouts/intro_page_2.dart';
import '../screens/auth_screens/onboarding_screens/layouts/intro_page_3.dart';
import '../screens/auth_screens/onboarding_screens/onboardscreen.dart';
import '../screens/auth_screens/signup_screen/signup_screen.dart';
import '../screens/auth_screens/signup_success_screen/signup_success_screen.dart';
import '../screens/auth_screens/splash_screen/splash_screen.dart';
import 'route_name.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.home, page: () => const HomeScreen()),
    GetPage(name: _routeName.cartScreen, page: () => const CartScreen()),
    GetPage(name: _routeName.splashScreen, page: () => const Splashscreen()),
    GetPage(name: _routeName.introPg1, page: () => const IntroPage1()),
    GetPage(name: _routeName.introPg2, page: () => const IntroPage2()),
    GetPage(name: _routeName.introPg3, page: () => const IntroPage3()),
    GetPage(name: _routeName.loginPg, page: () => const LoginPg()),
    // GetPage(name: _routeName.newArrivalScreen, page: () => NewArrivalScreen()),
    GetPage(
        name: _routeName.onBoardScreen, page: () => const OnBoardingScreen()),
    GetPage(name: _routeName.signSuccess, page: () => const SignUpSucess()),
    GetPage(name: _routeName.signUp, page: () => SignUpPg()),
    GetPage(name: _routeName.loginSignUp, page: () => const LoginOrSignUp()),
    GetPage(name: _routeName.blogPage, page: () => BlogPage()),
    GetPage(name: _routeName.collectionPage, page: () => CollectionPage()),
    GetPage(
        name: _routeName.placeOrderPage, page: () => const PlaceOrderPage()),
    GetPage(
        name: _routeName.paymentMethodPage,
        page: () => const PaymentMethodPage()),
    GetPage(name: _routeName.cartScreen1, page: () => const CartScreen1()),
    GetPage(
        name: _routeName.checkoutdetails, page: () => const CheckOutDetails()),
    GetPage(
        name: _routeName.checkoutlastpage,
        page: () => const CheckOutLastPage()),
    GetPage(name: _routeName.errorPage, page: () => const ErrorPage()),
    GetPage(name: _routeName.aboutUs, page: () => AboutUsPage()),
    GetPage(name: _routeName.searchCommon, page: () => SearchCommon()),
    GetPage(name: _routeName.searchView, page: () => const SearchView()),
    GetPage(name: _routeName.menuView, page: () => MenuView()),
    GetPage(name: _routeName.filterPage, page: () => const FilterPage()),
    GetPage(
        name: _routeName.collectionLikePage, page: () => CollectionLikePage()),
    // GetPage(name: _routeName.searchProductView, page: () => SearchProductView()),
    // GetPage(name: _routeName.productViewScreen, page: () => ProductViewScreen()),
  ];
}
