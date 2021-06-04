import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/auth/i_auth_facade.dart';
import 'package:friendlinus/domain/core/errors.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (_) => AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
      sentEmailVerification: (e) async* {
        yield const AuthState.unverified();
        await _authFacade.sendEmailVerification();
      },
      verifiedCheckRequested: (e) async* {
        yield const AuthState.verifying();
        final userVerified = await _authFacade.isUserVerified();
        if (userVerified) {
          yield const AuthState.verified();
        } else {
          yield const AuthState.unverified();
        }
      },
    );
  }
}
