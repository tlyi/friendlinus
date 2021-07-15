import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/location_chat_watcher/location_chat_watcher_bloc.dart';
import 'package:friendlinus/application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:friendlinus/presentation/location_chats/widgets/location_chat_list.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class LocationChatPage extends StatelessWidget {
  const LocationChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LocationChatWatcherBloc>()
        ..add(const LocationChatWatcherEvent.retrieveChatsStarted()),
      child: BlocBuilder<LocationChatWatcherBloc, LocationChatWatcherState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.white,
                  centerTitle: true,
                  title: const Text(
                    'Location Chats',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  leading: IconButton(
                      onPressed: () {
                        context.pushRoute(LocationChatFormRoute());
                      },
                      icon: const Icon(Icons.add_box, color: Colors.grey),
                      tooltip: 'Create New Chat'),
                  actions: [
                    Stack(children: [
                      IconButton(
                        icon: const Icon(Icons.notifications_none,
                            color: Colors.grey),
                        onPressed: () {
                          print('opening notifs');
                          context.pushRoute(NotificationRoute());
                        },
                        padding: const EdgeInsets.only(right: 20),
                      ),
                      BlocBuilder<NotifCounterWatcherBloc,
                          NotifCounterWatcherState>(
                        builder: (context, state) {
                          return Positioned(
                            top: 5,
                            right: 12,
                            child: (state is LoadSuccess)
                                ? state.unread == 0
                                    ? Container()
                                    : ClipOval(
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            color: constants.THEME_NOTIF_BG,
                                            child: Text(
                                                state.unread > 100
                                                    ? '+'
                                                    : state.unread.toString(),
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w300))))
                                : ClipOval(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 20,
                                      height: 20,
                                      color: constants.THEME_NOTIF_BG,
                                      child: const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                          );
                        },
                      ),
                    ])
                  ]),
              bottomNavigationBar: const NavigationBar(),
              floatingActionButton: FloatingActionButton(
                tooltip: 'Find Nearby Chats',
                onPressed: () {
                  context
                      .read<LocationChatWatcherBloc>()
                      .add(const LocationChatWatcherEvent.refreshedLocation());
                },
                backgroundColor: constants.THEME_BLUE,
                child: const Icon(Icons.location_searching),
              ),
              body: LocationChatList());
        },
      ),
    );
  }
}
