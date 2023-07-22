import 'package:flutter/material.dart';

class AppBarCustomWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  const AppBarCustomWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
