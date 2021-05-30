import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/home_page.dart';
import 'package:friendlinus/presentation/sign_in/sign_in_page.dart';
import 'package:friendlinus/presentation/splash/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
