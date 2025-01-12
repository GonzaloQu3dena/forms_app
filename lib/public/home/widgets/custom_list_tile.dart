import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// ### Custom List Tile
/// Custom List Tile for the Home Page
/// 
/// #### Properties
/// - [route] : Route to navigate to.
/// - [title] : Title of the List Tile.
/// - [subtitle] : Subtitle of the List Tile.
/// 
/// #### Author:
/// Gonzalo Quedena
class CustomListTile extends StatelessWidget {
  final String route;
  final String title;
  final String subtitle;

  const CustomListTile({
    super.key,
    required this.route,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
      ),
      onTap: () => {context.push(route)},
    );
  }
}
