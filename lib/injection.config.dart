// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i17;
import 'application/chats/chat_bloc.dart' as _i19;
import 'application/chats/chat_watcher/chat_watcher_bloc.dart' as _i20;
import 'application/chats/convo_actor/convo_actor_bloc.dart' as _i22;
import 'application/chats/convo_watcher/convo_watcher_bloc.dart' as _i23;
import 'application/forum/comment_watcher/comment_watcher_bloc.dart' as _i21;
import 'application/forum/forum_actor/forum_actor_bloc.dart' as _i24;
import 'application/forum/forum_form/forum_form_bloc.dart' as _i25;
import 'application/forum/forum_post_watcher/forum_post_watcher_bloc.dart'
    as _i26;
import 'application/forum/forum_post_watcher/poll_watcher/poll_watcher_bloc.dart'
    as _i14;
import 'application/forum/forum_watcher/forum_watcher_bloc.dart' as _i27;
import 'application/profile/profile_form/profile_form_bloc.dart' as _i15;
import 'application/search/search_profile_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/data/chats/i_chat_repository.dart' as _i8;
import 'domain/data/forum/i_forum_repository.dart' as _i10;
import 'domain/data/profile/i_profile_repository.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i28;
import 'infrastructure/data/chats/chat_repository.dart' as _i9;
import 'infrastructure/data/forum/forum_repository.dart' as _i11;
import 'infrastructure/data/profile/profile_repository.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i12.IProfileRepository>(() => _i13.ProfileRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.factory<_i14.PollWatcherBloc>(
      () => _i14.PollWatcherBloc(get<_i10.IForumRepository>()));
  gh.factory<_i15.ProfileFormBloc>(
      () => _i15.ProfileFormBloc(get<_i12.IProfileRepository>()));
  gh.factory<_i16.SearchProfileBloc>(
      () => _i16.SearchProfileBloc(get<_i12.IProfileRepository>()));
  gh.factory<_i17.SignInFormBloc>(
      () => _i17.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(() =>
      _i18.AuthBloc(get<_i6.IAuthFacade>(), get<_i12.IProfileRepository>()));
  gh.factory<_i19.ChatBloc>(() => _i19.ChatBloc(get<_i8.IChatRepository>()));
  gh.factory<_i20.ChatWatcherBloc>(
      () => _i20.ChatWatcherBloc(get<_i8.IChatRepository>()));
  gh.factory<_i21.CommentWatcherBloc>(
      () => _i21.CommentWatcherBloc(get<_i10.IForumRepository>()));
  gh.factory<_i22.ConvoActorBloc>(
      () => _i22.ConvoActorBloc(get<_i8.IChatRepository>()));
  gh.factory<_i23.ConvoWatcherBloc>(
      () => _i23.ConvoWatcherBloc(get<_i8.IChatRepository>()));
  gh.factory<_i24.ForumActorBloc>(
      () => _i24.ForumActorBloc(get<_i10.IForumRepository>()));
  gh.factory<_i25.ForumFormBloc>(() => _i25.ForumFormBloc(
      get<_i10.IForumRepository>(), get<_i12.IProfileRepository>()));
  gh.factory<_i26.ForumPostWatcherBloc>(() => _i26.ForumPostWatcherBloc(
      get<_i10.IForumRepository>(), get<_i12.IProfileRepository>()));
  gh.factory<_i27.ForumWatcherBloc>(
      () => _i27.ForumWatcherBloc(get<_i10.IForumRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i28.FirebaseInjectableModule {}
