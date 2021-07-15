import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/chats/chat_list/chat_list_page.dart';
import 'package:friendlinus/presentation/chats/convos/convo_page.dart';
import 'package:friendlinus/presentation/forum/forum_form/forum_form_page.dart';
import 'package:friendlinus/presentation/forum/forum_page/comment_page.dart';
import 'package:friendlinus/presentation/forum/forum_page/forum_page.dart';
import 'package:friendlinus/presentation/core/full_screen_photo.dart';
import 'package:friendlinus/presentation/forum/forum_tab/forum_tab_page.dart';
import 'package:friendlinus/presentation/forum/forum_tab/module_forum_page.dart';
import 'package:friendlinus/presentation/home/home_page.dart';
import 'package:friendlinus/presentation/location_chats/location_chat_list/location_chat_form_page.dart';
import 'package:friendlinus/presentation/location_chats/location_chat_list/location_chat_page.dart';
import 'package:friendlinus/presentation/location_chats/location_convos/location_convo_page.dart';
import 'package:friendlinus/presentation/notifications/notification_page.dart';
import 'package:friendlinus/presentation/profile/other_profile_page.dart';
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
    AutoRoute(
      page: ProfilePage
    ),
    AutoRoute(page: SearchUsersPage),
    AutoRoute(page: UpdateProfilePage),
    AutoRoute(page: OtherProfilePage),
    AutoRoute(page: ForumFormPage),
    AutoRoute(page: ChatListPage),
    AutoRoute(page: ConvoPage),
    AutoRoute(page: ForumPage),
    AutoRoute(page: CommentPage),
    AutoRoute(page: NotificationPage),
    AutoRoute(page: ModuleForumPage),
    AutoRoute(page: ForumTabPage),
    AutoRoute(page: LocationChatFormPage),
    AutoRoute(page: LocationChatPage),
<<<<<<< HEAD
    AutoRoute(page: LocationConvoPage),
    AutoRoute(page: FullScreenPhotoPage),

>>>>>>> a48fa3b9e4f55d58e2c2212c93a1c023bdb4d064
  ],
)
class $AppRouter {}
