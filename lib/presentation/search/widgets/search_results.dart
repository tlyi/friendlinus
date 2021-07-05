import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/search/search_profile_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchProfileBloc, SearchProfileState>(
      listener: (context, state) {
        if (state.isLoadedProfile) {
          state.selectedProfile.fold(
              (f) => FlushbarHelper.createError(message: 'Server error')
                  .show(context),
              (userProfile) => state.ownId == userProfile.uuid
                  ? context.pushRoute(ProfileRoute(canGoBack: true))
                  : context
                      .pushRoute(OtherProfileRoute(userProfile: userProfile)));
        }
      },
      builder: (context, state) {
        if (state.isSearching || state.isLoadingProfile) {
          return Container();
        } else if (state.displayResults) {
          final searchResults = context
              .read<SearchProfileBloc>()
              .state
              .searchProfileResults
              .getOrElse(() {
            FlushbarHelper.createError(message: 'Server error').show(context);
            return <Profile>[];
          });

          return FloatingSearchBarScrollNotifier(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final user = searchResults[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(user.photoUrl),
                      backgroundColor: Colors.white,
                    ),
                    title: Text(user.username.getOrCrash()),
                    onTap: () {
                      print('tapped');
                      context.read<SearchProfileBloc>().add(
                          SearchProfileEvent.profileSelected(
                              user.username.getOrCrash()));
                    },
                  ),
                );
              },
            ),
          );
        }

        return Container();
      },
    );
  }
}
