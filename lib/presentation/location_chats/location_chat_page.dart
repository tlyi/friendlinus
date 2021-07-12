import 'package:flutter/material.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;


class LocationChatPage extends StatelessWidget {
  const LocationChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context, header: 'Location Chats'),
      bottomNavigationBar: const NavigationBar(),
      floatingActionButton: FloatingActionButton(
                    tooltip: 'Find  Nearby Chats',
                    onPressed: () {
                      
                    },
                    backgroundColor: constants.THEME_BLUE,
                    child: const Icon(Icons.location_searching),
                  ),
      body: Container()

    );
  }
}