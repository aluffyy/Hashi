import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const Toolbar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: theme.background,
      elevation: 255,
      title: Text(
        title,
        style: textTheme.displayLarge,
        selectionColor: theme.onSurface,
        // TextStyle(
        //   color: AppColors.disableFont,
        // ),
      ),
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
