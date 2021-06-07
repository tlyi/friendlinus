// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:friendlinus/presentation/home_page.dart' as _i5;
import 'package:friendlinus/presentation/register/register_page1.dart' as _i6;
import 'package:friendlinus/presentation/register/register_profile_page.dart'
    as _i8;
import 'package:friendlinus/presentation/register/verify_email_page.dart'
    as _i7;
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
    RegisterRoute1.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.RegisterPage1();
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
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(RegisterRoute1.name, path: '/register-page1'),
        _i1.RouteConfig(VerifyEmailRoute.name, path: '/verify-email-page'),
        _i1.RouteConfig(RegisterProfileRoute.name,
            path: '/register-profile-page'),
        _i1.RouteConfig(ResetPasswordRoute.name, path: '/reset-password-page')
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

class RegisterRoute1 extends _i1.PageRouteInfo {
  const RegisterRoute1() : super(name, path: '/register-page1');

  static const String name = 'RegisterRoute1';
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
