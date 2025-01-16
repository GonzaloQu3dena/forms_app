import 'package:flutter/material.dart';
import 'package:forms_app/public/home/widgets/custom_list_tile.dart';

/// #### Home Screen
/// This is the home screen of the app. It contains a list of all the available screens.
///
/// #### Properties
/// - [HomeScreen.name] - The name of the screen.
///
/// #### Author
/// Gonzalo Quedena
class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomListTile(
            route: '/cubits',
            title: 'Cubits',
            subtitle: 'Simple state management',
          ),
          CustomListTile(
            route: '/bloc',
            title: 'BLoC',
            subtitle: 'Complex state management',
          ),
          _divider(),
          CustomListTile(
            route: '/sign-up',
            title: 'New User',
            subtitle: 'Forms management',
          )
        ],
      ),
    );
  }

  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Divider(),
    );
  }
}
