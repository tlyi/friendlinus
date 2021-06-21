// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async' as _i17;

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:dartz/dartz.dart' as _i18;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i15;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i14;
import 'application/chats/chat_bloc.dart' as _i16;
import 'application/profile/profile_form/profile_form_bloc.dart' as _i12;
import 'application/search/search_profile_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/data/chats/chat.dart' as _i20;
import 'domain/data/chats/i_chat_repository.dart' as _i8;
import 'domain/data/data_failure.dart' as _i19;
import 'domain/data/profile/i_profile_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
import 'infrastructure/data/chats/chat_repository.dart' as _i9;
import 'application/forum/forum_form/forum_form_bloc.dart' as _i16;
import 'application/profile/profile_form/profile_form_bloc.dart' as _i12;
import 'application/search/search_profile_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/data/forum/i_forum_repository.dart' as _i8;
import 'domain/data/profile/i_profile_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/data/forum/forum_repository.dart' as _i9;
import 'infrastructure/data/profile/profile_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.IChatRepository>(
      () => _i9.ChatRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IProfileRepository>(() => _i11.ProfileRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i8.IForumRepository>(() => _i9.ForumPostRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i10.IProfileRepository>(() => _i11.ProfileRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.factory<_i12.ProfileFormBloc>(
      () => _i12.ProfileFormBloc(get<_i10.IProfileRepository>()));
  gh.factory<_i13.SearchProfileBloc>(
      () => _i13.SearchProfileBloc(get<_i10.IProfileRepository>()));
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i15.AuthBloc>(() =>
      _i15.AuthBloc(get<_i6.IAuthFacade>(), get<_i10.IProfileRepository>()));
  gh.factory<_i16.ChatBloc>(() => _i16.ChatBloc(
      get<_i8.IChatRepository>(),
      get<
          _i17.StreamSubscription<
              _i18.Either<_i19.DataFailure, List<_i20.Chat>>>>()));
  return get;
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
  gh.factory<_i16.ForumFormBloc>(() => _i16.ForumFormBloc(
      get<_i8.IForumRepository>(), get<_i10.IProfileRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
