// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:friendlinus/domain/data/profile/profile.dart' as _i15;
import 'package:friendlinus/presentation/forum/forum_overview/forum_overview_page.dart'
    as _i10;
import 'package:friendlinus/presentation/home_page.dart' as _i5;
import 'package:friendlinus/presentation/profile/other_profile_page.dart'
    as _i14;
import 'package:friendlinus/presentation/profile/profile_page.dart' as _i11;
import 'package:friendlinus/presentation/profile/update_profile_page.dart'
    as _i13;
import 'package:friendlinus/presentation/register/register_page.dart' as _i6;
import 'package:friendlinus/presentation/register/register_profile_page.dart'
    as _i8;
import 'package:friendlinus/presentation/register/verify_email_page.dart'
    as _i7;
import 'package:friendlinus/presentation/search/search_users_page.dart' as _i12;
import 'package:friendlinus/presentation/sign_in/reset_password_page.dart'
    as _i9;
import 'package:friendlinus/presentation/sign_in/sign_in_page.dart' as _i4;
import 'package:friendlinus/presentation/splash/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    SignInRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SignInPage();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.HomePage();
        }),
    RegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.RegisterPage();
        }),
    VerifyEmailRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.VerifyEmailPage();
        }),
    RegisterProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.RegisterProfilePage();
        }),
    ResetPasswordRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.ResetPasswordPage();
        }),
    ForumOverviewRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.ForumOverviewPage();
        }),
    ProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.ProfilePage();
        }),
    SearchUsersRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.SearchUsersPage();
        }),
    UpdateProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i13.UpdateProfilePage();
        }),
    OtherProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OtherProfileRouteArgs>();
          return _i14.OtherProfilePage(
              key: args.key, userProfile: args.userProfile);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(RegisterRoute.name, path: '/register-page'),
        _i1.RouteConfig(VerifyEmailRoute.name, path: '/verify-email-page'),
        _i1.RouteConfig(RegisterProfileRoute.name,
            path: '/register-profile-page'),
        _i1.RouteConfig(ResetPasswordRoute.name, path: '/reset-password-page'),
        _i1.RouteConfig(ForumOverviewRoute.name, path: '/forum-overview-page'),
        _i1.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i1.RouteConfig(SearchUsersRoute.name, path: '/search-users-page'),
        _i1.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i1.RouteConfig(OtherProfileRoute.name, path: '/other-profile-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

class VerifyEmailRoute extends _i1.PageRouteInfo {
  const VerifyEmailRoute() : super(name, path: '/verify-email-page');

  static const String name = 'VerifyEmailRoute';
}

class RegisterProfileRoute extends _i1.PageRouteInfo {
  const RegisterProfileRoute() : super(name, path: '/register-profile-page');

  static const String name = 'RegisterProfileRoute';
}

class ResetPasswordRoute extends _i1.PageRouteInfo {
  const ResetPasswordRoute() : super(name, path: '/reset-password-page');

  static const String name = 'ResetPasswordRoute';
}

class ForumOverviewRoute extends _i1.PageRouteInfo {
  const ForumOverviewRoute() : super(name, path: '/forum-overview-page');

  static const String name = 'ForumOverviewRoute';
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

class SearchUsersRoute extends _i1.PageRouteInfo {
  const SearchUsersRoute() : super(name, path: '/search-users-page');

  static const String name = 'SearchUsersRoute';
}

class UpdateProfileRoute extends _i1.PageRouteInfo {
  const UpdateProfileRoute() : super(name, path: '/update-profile-page');

  static const String name = 'UpdateProfileRoute';
}

class OtherProfileRoute extends _i1.PageRouteInfo<OtherProfileRouteArgs> {
  OtherProfileRoute({_i2.Key? key, required _i15.Profile userProfile})
      : super(name,
            path: '/other-profile-page',
            args: OtherProfileRouteArgs(key: key, userProfile: userProfile));

  static const String name = 'OtherProfileRoute';
}

class OtherProfileRouteArgs {
  const OtherProfileRouteArgs({this.key, required this.userProfile});

  final _i2.Key? key;

  final _i15.Profile userProfile;
}
