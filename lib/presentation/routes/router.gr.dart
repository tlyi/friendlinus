// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:friendlinus/domain/data/profile/profile.dart' as _i21;
import 'package:friendlinus/presentation/chats/chat_list/chat_list_page.dart'
    as _i16;
import 'package:friendlinus/presentation/chats/convos/convo_page.dart' as _i17;
import 'package:friendlinus/presentation/chats/convos/convo_splash_page.dart'
    as _i19;
import 'package:friendlinus/presentation/forum/forum_form/forum_form_page.dart'
    as _i15;
import 'package:friendlinus/presentation/forum/forum_overview/forum_overview_page.dart'
    as _i14;
import 'package:friendlinus/presentation/forum/forum_page/comment_page.dart'
    as _i20;
import 'package:friendlinus/presentation/forum/forum_page/forum_page.dart'
    as _i18;
import 'package:friendlinus/presentation/home_page.dart' as _i5;
import 'package:friendlinus/presentation/profile/other_profile_page.dart'
    as _i13;
import 'package:friendlinus/presentation/profile/profile_page.dart' as _i10;
import 'package:friendlinus/presentation/profile/update_profile_page.dart'
    as _i12;
import 'package:friendlinus/presentation/register/register_page.dart' as _i6;
import 'package:friendlinus/presentation/register/register_profile_page.dart'
    as _i8;
import 'package:friendlinus/presentation/register/verify_email_page.dart'
    as _i7;
import 'package:friendlinus/presentation/search/search_users_page.dart' as _i11;
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
    ProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileRouteArgs>();
          return _i10.ProfilePage(key: args.key, canGoBack: args.canGoBack);
        }),
    SearchUsersRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.SearchUsersPage();
        }),
    UpdateProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.UpdateProfilePage();
        }),
    OtherProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OtherProfileRouteArgs>();
          return _i13.OtherProfilePage(
              key: args.key, userProfile: args.userProfile);
        }),
    ForumOverviewRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.ForumOverviewPage();
        }),
    ForumFormRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i15.ForumFormPage();
        }),
    ChatListRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i16.ChatListPage();
        }),
    ConvoRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ConvoRouteArgs>();
          return _i17.ConvoPage(
              key: args.key,
              convoId: args.convoId,
              senderProfile: args.senderProfile);
        }),
    ForumRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ForumRouteArgs>();
          return _i18.ForumPage(
              key: args.key, forumId: args.forumId, pollAdded: args.pollAdded);
        }),
    ConvoSplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ConvoSplashRouteArgs>();
          return _i19.ConvoSplashPage(
              key: args.key, senderProfile: args.senderProfile);
        }),
    CommentRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CommentRouteArgs>();
          return _i20.CommentPage(key: args.key, forumId: args.forumId);
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
        _i1.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i1.RouteConfig(SearchUsersRoute.name, path: '/search-users-page'),
        _i1.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i1.RouteConfig(OtherProfileRoute.name, path: '/other-profile-page'),
        _i1.RouteConfig(ForumOverviewRoute.name, path: '/forum-overview-page'),
        _i1.RouteConfig(ForumFormRoute.name, path: '/forum-form-page'),
        _i1.RouteConfig(ChatListRoute.name, path: '/chat-list-page'),
        _i1.RouteConfig(ConvoRoute.name, path: '/convo-page'),
        _i1.RouteConfig(ForumRoute.name, path: '/forum-page'),
        _i1.RouteConfig(ConvoSplashRoute.name, path: '/convo-splash-page'),
        _i1.RouteConfig(CommentRoute.name, path: '/comment-page')
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

class ProfileRoute extends _i1.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({_i2.Key? key, required bool canGoBack})
      : super(name,
            path: '/profile-page',
            args: ProfileRouteArgs(key: key, canGoBack: canGoBack));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.canGoBack});

  final _i2.Key? key;

  final bool canGoBack;
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
  OtherProfileRoute({_i2.Key? key, required _i21.Profile userProfile})
      : super(name,
            path: '/other-profile-page',
            args: OtherProfileRouteArgs(key: key, userProfile: userProfile));

  static const String name = 'OtherProfileRoute';
}

class OtherProfileRouteArgs {
  const OtherProfileRouteArgs({this.key, required this.userProfile});

  final _i2.Key? key;

  final _i21.Profile userProfile;
}

class ForumOverviewRoute extends _i1.PageRouteInfo {
  const ForumOverviewRoute() : super(name, path: '/forum-overview-page');

  static const String name = 'ForumOverviewRoute';
}

class ForumFormRoute extends _i1.PageRouteInfo {
  const ForumFormRoute() : super(name, path: '/forum-form-page');

  static const String name = 'ForumFormRoute';
}

class ChatListRoute extends _i1.PageRouteInfo {
  const ChatListRoute() : super(name, path: '/chat-list-page');

  static const String name = 'ChatListRoute';
}

class ConvoRoute extends _i1.PageRouteInfo<ConvoRouteArgs> {
  ConvoRoute(
      {_i2.Key? key,
      required String convoId,
      required _i21.Profile senderProfile})
      : super(name,
            path: '/convo-page',
            args: ConvoRouteArgs(
                key: key, convoId: convoId, senderProfile: senderProfile));

  static const String name = 'ConvoRoute';
}

class ConvoRouteArgs {
  const ConvoRouteArgs(
      {this.key, required this.convoId, required this.senderProfile});

  final _i2.Key? key;

  final String convoId;

  final _i21.Profile senderProfile;
}

class ForumRoute extends _i1.PageRouteInfo<ForumRouteArgs> {
  ForumRoute({_i2.Key? key, required String forumId, required bool pollAdded})
      : super(name,
            path: '/forum-page',
            args: ForumRouteArgs(
                key: key, forumId: forumId, pollAdded: pollAdded));

  static const String name = 'ForumRoute';
}

class ForumRouteArgs {
  const ForumRouteArgs(
      {this.key, required this.forumId, required this.pollAdded});

  final _i2.Key? key;

  final String forumId;

  final bool pollAdded;
}

class ConvoSplashRoute extends _i1.PageRouteInfo<ConvoSplashRouteArgs> {
  ConvoSplashRoute({_i2.Key? key, required _i21.Profile senderProfile})
      : super(name,
            path: '/convo-splash-page',
            args: ConvoSplashRouteArgs(key: key, senderProfile: senderProfile));

  static const String name = 'ConvoSplashRoute';
}

class ConvoSplashRouteArgs {
  const ConvoSplashRouteArgs({this.key, required this.senderProfile});

  final _i2.Key? key;

  final _i21.Profile senderProfile;
}

class CommentRoute extends _i1.PageRouteInfo<CommentRouteArgs> {
  CommentRoute({_i2.Key? key, required String forumId})
      : super(name,
            path: '/comment-page',
            args: CommentRouteArgs(key: key, forumId: forumId));

  static const String name = 'CommentRoute';
}

class CommentRouteArgs {
  const CommentRouteArgs({this.key, required this.forumId});

  final _i2.Key? key;

  final String forumId;
}
