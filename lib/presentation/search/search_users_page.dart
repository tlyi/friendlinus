import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/search/search_profile_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/search/widgets/search_bar.dart';

class SearchUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context, header: 'Search Users', canGoBack: true),
      bottomNavigationBar: const NavigationBar(),
      body: BlocProvider(
        create: (context) => getIt<SearchProfileBloc>(),
        child: SearchBar(),
      ),
    );
  }
}
