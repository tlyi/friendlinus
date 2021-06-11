import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/search/search_profile_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchProfileBloc, SearchProfileState>(
        builder: (context, state) {
      return Scaffold(
        body: FloatingSearchBar(
          automaticallyImplyBackButton: false,
          scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
          progress: false, //set to true later
          elevation: 10,
          transitionDuration: const Duration(milliseconds: 800),
          transitionCurve: Curves.easeInOut,
          physics: const BouncingScrollPhysics(),
          hint: 'Search users...',
          transition: CircularFloatingSearchBarTransition(),
          actions: [
            FloatingSearchBarAction(
              showIfOpened: false,
              child: CircularButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
            ),
            FloatingSearchBarAction.searchToClear(
              showIfClosed: false,
            ),
          ],
          onQueryChanged: (query) {
            //call searchChanged event
            context
                .read<SearchProfileBloc>()
                .add(SearchProfileEvent.searchChanged(query));
          },
          builder: (BuildContext context, Animation<double> transition) {
            return Text('hahahahah search results plzzzzzzzzz');
          },
        ),
      );
    });
  }
}
