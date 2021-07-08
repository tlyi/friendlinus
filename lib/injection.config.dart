// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i26;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i25;
import 'application/chats/chat_bloc.dart' as _i27;
import 'application/chats/chat_watcher/chat_watcher_bloc.dart' as _i29;
import 'application/chats/convo_actor/convo_actor_bloc.dart' as _i31;
import 'application/chats/convo_watcher/convo_watcher_bloc.dart' as _i32;
import 'application/forum/comment_watcher/comment_watcher_bloc.dart' as _i30;
import 'application/forum/forum_actor/forum_actor_bloc.dart' as _i33;
import 'application/forum/forum_form/forum_form_bloc.dart' as _i34;
import 'application/forum/forum_post_watcher/forum_post_watcher_bloc.dart'
    as _i35;
import 'application/forum/forum_post_watcher/poll_watcher/poll_watcher_bloc.dart'
    as _i21;
import 'application/forum/forum_watcher/forum_watcher_bloc.dart' as _i36;
import 'application/forum/module_watcher/module_watcher_bloc.dart' as _i18;
import 'application/notifications/chat_counter_watcher/chat_counter_watcher_bloc.dart'
    as _i28;
import 'application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart'
    as _i19;
import 'application/notifications/notification_watcher/notification_watcher_bloc.dart'
    as _i20;
import 'application/profile/profile_actor/profile_actor_bloc.dart' as _i22;
import 'application/profile/profile_form/profile_form_bloc.dart' as _i23;
import 'application/search/search_profile_bloc.dart' as _i24;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/data/chats/i_chat_repository.dart' as _i8;
import 'domain/data/forum/i_forum_repository.dart' as _i10;
import 'domain/data/notifications/i_notification_repository.dart' as _i14;
import 'domain/data/profile/i_profile_repository.dart' as _i16;
import 'domain/mods/i_mod_repository.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i37;
import 'infrastructure/data/chats/chat_repository.dart' as _i9;
import 'infrastructure/data/forum/forum_repository.dart' as _i11;
import 'infrastructure/data/notifications/notification_repository.dart' as _i15;
import 'infrastructure/data/profile/mods/mod_repository.dart' as _i13;
import 'infrastructure/data/profile/profile_repository.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i8.IChatRepository>(() => _i9.ChatRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i10.IForumRepository>(() => _i11.ForumPostRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i12.IModRepository>(
      () => _i13.ModRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.INotificationRepository>(() =>
      _i15.NotificationRepository(
          get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i16.IProfileRepository>(() => _i17.ProfileRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.factory<_i18.ModuleWatcherBloc>(
      () => _i18.ModuleWatcherBloc(get<_i10.IForumRepository>()));
  gh.factory<_i19.NotifCounterWatcherBloc>(
      () => _i19.NotifCounterWatcherBloc(get<_i14.INotificationRepository>()));
  gh.factory<_i20.NotificationWatcherBloc>(
      () => _i20.NotificationWatcherBloc(get<_i14.INotificationRepository>()));
  gh.factory<_i21.PollWatcherBloc>(
      () => _i21.PollWatcherBloc(get<_i10.IForumRepository>()));
  gh.factory<_i22.ProfileActorBloc>(
      () => _i22.ProfileActorBloc(get<_i16.IProfileRepository>()));
  gh.factory<_i23.ProfileFormBloc>(
      () => _i23.ProfileFormBloc(get<_i16.IProfileRepository>()));
  gh.factory<_i24.SearchProfileBloc>(
      () => _i24.SearchProfileBloc(get<_i16.IProfileRepository>()));
  gh.factory<_i25.SignInFormBloc>(
      () => _i25.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(get<_i6.IAuthFacade>(),
      get<_i16.IProfileRepository>(), get<_i12.IModRepository>()));
  gh.factory<_i27.ChatBloc>(() => _i27.ChatBloc(get<_i8.IChatRepository>()));
  gh.factory<_i28.ChatCounterWatcherBloc>(
      () => _i28.ChatCounterWatcherBloc(get<_i14.INotificationRepository>()));
  gh.factory<_i29.ChatWatcherBloc>(
      () => _i29.ChatWatcherBloc(get<_i8.IChatRepository>()));
  gh.factory<_i30.CommentWatcherBloc>(() => _i30.CommentWatcherBloc(
      get<_i10.IForumRepository>(), get<_i16.IProfileRepository>()));
  gh.factory<_i31.ConvoActorBloc>(
      () => _i31.ConvoActorBloc(get<_i8.IChatRepository>()));
  gh.factory<_i32.ConvoWatcherBloc>(
      () => _i32.ConvoWatcherBloc(get<_i8.IChatRepository>()));
  gh.factory<_i33.ForumActorBloc>(
      () => _i33.ForumActorBloc(get<_i10.IForumRepository>()));
  gh.factory<_i34.ForumFormBloc>(() => _i34.ForumFormBloc(
      get<_i10.IForumRepository>(), get<_i16.IProfileRepository>()));
  gh.factory<_i35.ForumPostWatcherBloc>(() => _i35.ForumPostWatcherBloc(
      get<_i10.IForumRepository>(), get<_i16.IProfileRepository>()));
  gh.factory<_i36.ForumWatcherBloc>(
      () => _i36.ForumWatcherBloc(get<_i10.IForumRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i37.FirebaseInjectableModule {}
