import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/search/search_profile_bloc.dart';
import 'package:friendlinus/presentation/search/widgets/search_results.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchProfileBloc, SearchProfileState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            fit: StackFit.expand,
            children: [
              _BuildFloatingSearchBar(),
            ],
          ),
        );
      },
    );
  }
}

class _BuildFloatingSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      automaticallyImplyBackButton: false,
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      progress: context.read<SearchProfileBloc>().state.isLoadingProfile ||
          context.read<SearchProfileBloc>().state.isSearching,
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
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        //call searchChanged event
        context
            .read<SearchProfileBloc>()
            .add(SearchProfileEvent.searchChanged(query));
      },
      builder: (BuildContext context, Animation<double> transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SearchResults(),
        );
      },
    );
  }
}
