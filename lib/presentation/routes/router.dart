import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/forum/forum_overview/forum_overview_page.dart';
import 'package:friendlinus/presentation/home_page.dart';
import 'package:friendlinus/presentation/profile/profile_page.dart';
import 'package:friendlinus/presentation/profile/update_profile_page.dart';
import 'package:friendlinus/presentation/register/register_page.dart';
import 'package:friendlinus/presentation/register/register_profile_page.dart';
import 'package:friendlinus/presentation/register/verify_email_page.dart';
import 'package:friendlinus/presentation/search/search_users_page.dart';
import 'package:friendlinus/presentation/sign_in/reset_password_page.dart';
import 'package:friendlinus/presentation/sign_in/sign_in_page.dart';
import 'package:friendlinus/presentation/splash/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: VerifyEmailPage),
    AutoRoute(page: RegisterProfilePage),
    AutoRoute(page: ResetPasswordPage),
    AutoRoute(page: ForumOverviewPage),
    AutoRoute(page: ProfilePage),
    AutoRoute(page: SearchUsersPage),
    AutoRoute(page: UpdateProfilePage),
  ],
)
class $AppRouter {}
