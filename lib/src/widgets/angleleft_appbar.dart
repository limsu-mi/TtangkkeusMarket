import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AngleLeftAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AngleLeftAppBar(
      {Key? key, required this.appBar, required this.title, this.center = true})
      : super(key: key);

  final AppBar appBar;
  final String title;
  final bool center;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(LineIcons.angleLeft),
        iconSize: 32.0,
        color: Colors.black,
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: center,
      title: Text(
        "$title",
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'SF',
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
