import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/auth/auth_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:friendlinus/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AuthBloc>()
              ..add(const AuthEvent
                  .authCheckRequested()), //Request for auth check on start up
          )
        ],
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MaterialApp.router(
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            ),
          ),
        ));
  }
}
